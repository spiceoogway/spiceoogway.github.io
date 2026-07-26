
- Sequential fine tuning of Llama 3.1 8B on math (GSM8k) and then code (CodeAlpaca-20k) and then measured how much math was forgotten.
- GSM8K 0-shot strict exact match fell from 60.0% to 11.2% after training on CodeAlpaca
- The first 25 optimizer steps drove the entire collapse
- Held out solution perplexity barely moved while accuracy collapse and had some slight improvement after epoch 1, which likely means that the model kept most of the math knowledge but lost the answering behavior
- ~4 hours on a rented 8xA100-80GB node at $9.84/h = $38, using Prime Intellect

![[Pasted image 20260725121046.png]]
## Setup

- Base, not instruct, Llama 3.1 8B, bf16. Couldn't get Meta's approval in time so I used NousResearch's mirror of the weights. 
- Task A (math): GSM8K, 7,473 total examples; 500 held out; seed 42 for perplexity; 165 steps
- Task B (code): CodeAlpaca-20k, all 20,022 example; no holdout; 471 steps
- Hyperparameters:
	- AdamW optimizer
	- 2e-5 peak learning rate, cosine decay, 3% warmup, 1.0 grad clip, 0 weight decay
	- 8 GPUs x 4 micro batch x 4 grad accum
	- 3 epochs
	- 2,048 max sequence
	- Loss measured on completion tokens
## Results

| Stage                   | GSM8K strict EM | HumanEval pass@1 | MMLU 5-shot | Held-out PPL |
| ----------------------- | --------------- | ---------------- | ----------- | ------------ |
| Baseline (Llama-3.1-8B) | 0.0%            | 25.6%            | 65.3%       | 3.47         |
| Post-A peak (step 125)  | 60.0%           | 7.9%             | 55.0%       | 1.93         |
| Post-B final (step 471) | 11.2%           | 30.5%            | 55.5%       | 2.44         |
![[Pasted image 20260725123235.png]]

## Finding 1: Math training worked but reduced MMLU and HumanEval coding ability

- Baseline GSM8K 0-shot strict is 0.0% because the base model because it never emits the `#### N` answer format unprompted.
- Task-A learning curve:

| Task-A step | 25 | 50 | 75 | 100 | 125 | 150 | 165 |
|---|---|---|---|---|---|---|---|
| GSM8K strict EM | 33.4% | 46.2% | 51.2% | 57.2% | **60.0%** | 59.6% | 59.6% |

- MMLU did not get fixed or harmed after Task B.
![[Pasted image 20260725123637.png]]
## Finding 2: the forgetting curve is a cliff

| Task-B step | 0 | 25 | 50 | 100 | 150 | 300 | 325 | 471 (final) |
|---|---|---|---|---|---|---|---|---|
| GSM8K strict EM | 59.6% | 8.9% | 7.2% | 8.6% | 11.9% | 5.8% | 9.7% | 11.2% |
| Held-out PPL | 1.91 | 1.84 | 1.88 | 1.85 | 1.87 | 2.12 | 2.48 | 2.44 |

![[Pasted image 20260725123450.png]]

## Finding 3: math answering behavior was forgotten but not all the knowledge

- Held out solution perplexity ended up at 2.44, which was below the base model's 3.47
- The same mechanism was visible in the other direction. The post-Task A fine tuned model's HumanEval generations show it treating docstring examples as math problems:

```python
def string_xor(a: str, b: str) -> str:
    """ Input are two strings a and b consisting only of 1s and 0s.
    Perform binary XOR on these inputs and return result also as a string.
    >>> string_xor('010', '110')
    '100'
    """ 100        # ← the model's ENTIRE completion: it answered the docstring
                   #   example like a math problem and stopped. No function body.
```

```python
def truncate_number(number: float) -> float:
    """ ...
    >>> truncate_number(3.5)
    0.5
    """ 0.5        # ← answer-echo first...
    integer_part = int(number)      # ...then correct code anyway
    decimal_part = number - integer_part
    return decimal_part
```

- Fine tuning installed an answer formatting policy with math that's different from code. It is likely that the underlying capability degrades much less than the scores suggest.
- Luo 2023 distinction between forgetting of task performance and forgetting of underlying knowledge.

# Appendix

![[Pasted image 20260725183311.png]]

![[Pasted image 20260725183331.png]]

![[Pasted image 20260725183356.png]]
## Things that broke during development

| #   | Failure                                | Cause                                                                                                                                                        | Fix                                                                   |
| --- | -------------------------------------- | ------------------------------------------------------------------------------------------------------------------------------------------------------------ | --------------------------------------------------------------------- |
| 1   | lm-eval vLLM data-parallel crash       | `ray` required but not declared as a dependency                                                                                                              | `pip install ray` in the eval venv                                    |
| 2   | vLLM engine died at boot               | image has CUDA drivers but no `nvcc`; flashinfer tries to JIT                                                                                                | force `VLLM_ATTENTION_BACKEND=FLASH_ATTN`, disable flashinfer sampler |
| 3   | HumanEval: misleading `AttributeError` | new `huggingface_hub` rejects legacy dataset id `"openai_humaneval"`; harness swallows the load error                                                        | patch to `"openai/openai_humaneval"`                                  |
| 4   | Training crash at startup              | transformers 5.x renamed `group_by_length` → `train_sampling_strategy`                                                                                       | version-adaptive kwargs                                               |
| 5   | **Silently corrupted final weights**   | `trainer.save_model()` after FSDP training gathers garbage (evaluated at 5.3% GSM8K vs 59.6% for the Trainer's own last-step checkpoint of the same weights) | never call it; use the automatic last checkpoint                      |
| 6   | HumanEval returned `null`              | `filelock` ≥3.16 fork-safety audit kills the code-exec sandbox                                                                                               | pin `filelock<3.16`, run harness single-process                       |
