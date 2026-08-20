
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

Performance testing

Benchmarked static vs continuous batching with the same vLLM engine on a rented A100 80GB (Qwen2.5-7B-Instruct, 256 requests, output lengths varied 32–512 tokens, ignore_eos so every config generates the exact same 70,814 tokens). Static = submit a batch of B prompts, wait for all of them to finish, submit the next batch. Continuous = submit everything at once with max_num_seqs=B so a waiting request takes a slot the moment one frees up. Same engine, same workload — only the scheduling policy differs.

![[continuous-batching-throughput-benchmark.png]]

![[continuous-batching-speedup-benchmark.png]]

The speedup peaks at 1.63x at concurrency 16 and narrows at 64 — with 256 requests, B=64 means only 4 batches, so there are fewer barriers to pay for. At B=1 the two policies are identical within 1% (sanity check that the comparison is fair).

![[continuous-batching-barrier-staircase-benchmark.png]]

The staircase is static batching's completions at concurrency 16: each step is a barrier where the whole batch sat waiting for its longest sequence (the white squares in the hand-drawn chart above). Continuous batching finished the same 256 requests at 51s vs 83s.

Numbers (output tok/s, static → continuous): B=4: 255 → 384 (1.51x) · B=8: 460 → 733 (1.60x) · B=16: 853 → 1,388 (1.63x) · B=32: 1,601 → 2,471 (1.54x) · B=64: 2,879 → 3,870 (1.34x)

Harness + raw per-request timings live in ~/llm-serving (bench/run_bench.py, results/results.json). Note the classic "23x" numbers people post compare vLLM vs naive HF generate, which bundles in PagedAttention + kernel wins — this isolates the scheduling algorithm itself.

Post 2:

Turns out you can chain speculative decoding drafters.
