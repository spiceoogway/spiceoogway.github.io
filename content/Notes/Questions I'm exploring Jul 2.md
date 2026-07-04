- Will context windows really not get that large?
    - What is driving that improvement in sample efficiency?
        - Better training distribution, larger models, longer context lets you feed in more examples.

- Genuinely, a labs ability to scale up context windows will 

Thesis:
- The main driver to frontier models is going to be:
    - Temp improvements in ICL
    - Economies of scale
- The main driver away from frontier model is
    - Limited context windows
    - Open source models

- https://x.com/mariogabriele/status/2069390013012602913
- What large companies are training their own models? Why?
    - Cost is the main driver
    - Name of the game is “learning from sparse rewards”
- What small companies are training their own models? Why?

I suspect if you do not have:
- your own model, AI is effectively a cost center for you not a revenue center

Once you decide to train your own modal, what are the sorts of things you care about?

- Why did GML 5.2 go back to PPO from GRPO?
- What is ECHO?
    - Just world modeling the terminal environment
- What is DeepSeek’s unsupervised environment design and joint sparse-dense learning?
    - ECHO + Self distillation
- https://x.com/ZyphraAI/status/2069835007548702811
    - What is this?
        - Just saying that the pre-train basically gets loss of plasticity
- What is the state of inverse RL? What comes before inverse RL?
- Do you need evals for Niyant’s idea?
- How is a prosumer reward model / utility function not well represented in todays models? 
    - (because it can’t predict me)
    - Is anyone doing action prediction with models at this point?
        - It seems to me that you would not know the value of the thing if you didn’t try it
- How does socially constructed money work when a party accumulates capital but we don’t recognize them as human?
- What are the smallest companies building evals?
- It’s not clear to me how we go from RL gyms and environments to inverse RL and predicting my actions

- Tinker:
    - Are training costs decreasing? At what speed?
- Who are the people that are buying 8xH100? What are they doing? Were they originally renting?
    - High problem scale buyers
    - What are the reasons someone would b
    - High problem scale renters

- Thesis, you’re buying once you’re renting a lot. At the point where you’re buying, you likely are filling demand from renting and that places you at extremely high problem scale. I’m wondering if the only reason someone buys instead of rents is for financial reasons or if there’s something else, technical, to it.
    - Seems like it’s mostly Utilization math results in own > rent at high util
    - Sometimes it’s benefits from hardware control (data sovereignty, firmware stuff, cluster tuning)
    - Reselling idle capacity seems pretty fucking massive for basically everyone

- What do secondary compute prices look like? Can we see the compute bottleneck today?
    - Look up whether people have attempted individual-level NTP

- My expectation is that low-quality clusters are basically a commodity and there’s not really much to be made unless you have a particular perspective on GPU depreciation.

**Jul-3rd questions**
- Does Thinking Machines have training only revenue?
- What product / model currently has the most frequent continuous retraining cycles?
- Review list of potential YC companies engaging in LLM training. Identify patterns.

|Cohort|Teams|
|---|---|
|Spring 2026|[PerfectBit](https://www.ycombinator.com/companies/perfectbit-inc), [Zibra Labs](https://www.ycombinator.com/companies/zibra-labs), [Hub](https://www.ycombinator.com/companies/hub)|
|Winter 2026|[Rubric AI](https://www.ycombinator.com/companies/rubric-ai), [Cascade](https://www.ycombinator.com/companies/cascade), [Polymath](https://www.ycombinator.com/companies/polymath), [Cumulus Labs](https://www.ycombinator.com/companies/cumulus-labs), [Synthetic Sciences](https://www.ycombinator.com/companies/synthetic-sciences)|
|Fall 2025|[Sciloop](https://www.ycombinator.com/companies/sciloop), [hillclimb](https://www.ycombinator.com/companies/hillclimb), [Zalos](https://www.ycombinator.com/companies/zalos), [SF Tensor](https://www.ycombinator.com/companies/sf-tensor)|
|Summer 2025|[SigmanticAI](https://www.ycombinator.com/companies/sigmanticai), [Halluminate](https://www.ycombinator.com/companies/halluminate), [Idler](https://www.ycombinator.com/companies/idler), [MangoDesk](https://www.ycombinator.com/companies/mangodesk), [Monte](https://www.ycombinator.com/companies/monte)|
|Spring 2025|[The LLM Data Company](https://www.ycombinator.com/companies/the-llm-data-company), [RunRL](https://www.ycombinator.com/companies/runrl), [Aviro](https://www.ycombinator.com/companies/aviro), [Refresh](https://www.ycombinator.com/companies/refresh), [Cartpole](https://www.ycombinator.com/companies/cartpole), [Klavis AI](https://www.ycombinator.com/companies/klavis-ai), [Feyn](https://www.ycombinator.com/companies/feyn)|
|Winter 2025|[Osmosis](https://www.ycombinator.com/companies/osmosis), [TrainLoop](https://www.ycombinator.com/companies/trainloop), [Nitrode](https://www.ycombinator.com/companies/nitrode), [AfterQuery](https://www.ycombinator.com/companies/afterquery), [Mundo AI](https://www.ycombinator.com/companies/mundo-ai), [ZeroEntropy](https://www.ycombinator.com/companies/zeroentropy), [HUD](https://www.ycombinator.com/companies/hud)|
- How do context windows relate to this log sigmoid scaling law?
	- https://edge-bench.org/paper.pdf 
- **What's poetiq, ricursive, unconventional, neocognition, zyphra up to?**
- Who has the most sophisticated approach to AI alignment?
	- Anthropic's control alignment at the nation state level seems like a ***schelling point solution***