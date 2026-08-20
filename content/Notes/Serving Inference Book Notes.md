
- business implications: latency, throughput, cost
- optimization techniques: batching, quantization, kernel fusion, continouous batching, prefix caching, speculative decoding

- What is python's pickle utility for serializing objects?
- What exactly is serialization?
- What are convolutional layers? What are registered buffers?
- What is pagedAttention?
- Matrix Learning Accelerator
- What is an LRU cache?
- Prefill, decode, kv cache boost?
- How exactly does stream async work?
- Ops / bytes and arithmetic intensity of a model

- continous batching
- staged / cascade speculative decoding

- What doe speculative decoding use for speculation on the draft tokens?

Post 1: Continuous Batching

Today, I build a custom implementation of continuous batching. 

I broke this post down into two parts:
- The basics of naive and continuous batching
- Performance testing

First, what is the problem that continuous batching solves?

Let's say you have n users and a GPU can only process 4 user prompts at a time. The first four users send their respective prompts to my API endpoint. 

In his chart, T1-T8 are tokens in a generative sequence. Prompt squares are green tokens, generated (output) squares are yellow, and the red squares are end-of-sequence tokens.

![[continuous-batching-naive-handdrawn.png]]

A naive batching implementation waits until all 4 users’ sequences are finished before accepting the next user prompts. As you can see by the white squares in the right hand side of the chart, the GPU is idle while you wait for user 2's sequence to finish.

![[continuous-batching-dynamic-handdrawn.png]]

Continuous batching on the other hand implements iteration level sequencing such that you you begin to accept the next user's sequence as soon as the previous user's sequence is finished.

Continuous batching does introduce a scheduling conflict when a new request arrives while other requests are decoding. 

A long prefill (shown as the green prefill block for a new prompt sequence) can stall the other decoding requests. Although this reduces the TTFT for the new user, the other users that are in the middle of the streaming process will see their output pause while another user's prompt is being processed. 

This is called decode-maximal batching (https://arxiv.org/abs/2308.16369). It results in lower Inter Token Latency (ITL) however the tradeoff includes additional shceulding and attention overhead.

![[Pasted image 20260819195953.png]]

![[Pasted image 20260819200032.png]]

You can resolve this issue by chunking the prefill and scheduling them in multiple iterations. 

For testing, I rebuilt vLLM's continuous batching engine for Qwen2.5-7B-Instruct. The following are using a rented A100 80GB.

![[continuous-batching-throughput-benchmark-v2.png]]

![[continuous-batching-speedup-benchmark-v2.png]]

Post 2:

Drafters and speculative decoding

Lately, I've been spending time understanding various speculative decoding architectures.

Coherence is mostly local: a candidate's fit depends mainly on the token just before it, so scoring neighboring pairs should be enough. DFlash 2 keeps the top 16 candidates at each position and scores every adjacent pair: for predecessor aa and current candidate bb,

St(a,b)=Ut(b)+⟨A(a)⊙H(ht),B(b)⟩.St​(a,b)=Ut​(b)+⟨A(a)⊙H(ht​),B(b)⟩.

The score has two parts. The first, Ut(b)Ut​(b), is DFlash's own logit: how much the drafter already liked bb on its own. The second asks how well bb follows aa: AA and BB give each token a compact 256-dimensional embedding, and the two embeddings are matched under a context gate H(ht)H(ht​) that decides which parts of the match count. In essence, this is a low-rank bilinear attention over adjacent candidates.

Scoring stays fully parallel. Every adjacent pair at every position is scored in one shot, with no extra backbone or LM-head pass. The only sequential work is the final walk over precomputed scores: starting from the last verified token, greedy follows the best successor at each step, sampling draws from the same scores, and rejection sampling restores the exact target distribution.

![[Pasted image 20260820113043.png]]

An agent writes in an afternoon what a chatbot writes in a month, and decoding sits under every one of those tokens. DFlash 2 decodes at **close to 3× the speed of autoregressive decoding, about a third of the compute per token**, with the same output.

In seven months, DFlash went from our paper to an industry standard, with more than 3.5 million downloads. Inside the same design, DFlash 2 decodes one more full token per pass, for free. That is only one component of the serving stack. Inference is nowhere near its floor.

Useful things per joule