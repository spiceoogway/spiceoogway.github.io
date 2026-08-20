
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
- The math

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

Post 2:

Turns out you can chain speculative decoding drafters.
