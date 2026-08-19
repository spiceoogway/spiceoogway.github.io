
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
- 

First, what is the problem that continuous batching solves?

Let's say you have n users and a GPU can only process 4 user prompts at a time. The first four users send their respective prompts to my API endpoint. 

A naive batching implementation would generate each new token for each user auto-regressively and wait until all tokens for both users are generated before accepting any new prompts from the users.

This can result in scenarios where Users A decode sequence is finished before User B's. While User A's sequence is finished, naive batching cannot accept User C's prompt and parts of the GPU are idle while you wait from User B's sequence to finish.

How does continuous batching solve this problem?

Let's go to the prior example, but this time, we "re-batch" the prompts the moment User C's prompt comes in. 

Instead of waiting for User B's sequence to finish before accepting User C's prompt, User C's sequences is simply batched with the other two users and placed in the decoder queue. We also can take User A's sequence, send it to User A's client and remove prompt A from the batch during the re-batch. 


Post 2: Staged / Cascade Speculative Decoding vs MEDUSA/Eagle


- 