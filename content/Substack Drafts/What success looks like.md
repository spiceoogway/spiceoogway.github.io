Slavery was the most profitable to labor arrangement ever devised, yet we abolished it. Heroin might be the most margin efficient consumer product ever built, yet most have never tried it. How is it that some of the most profitable strategies in history keep losing. To *what?*

**First, what makes these strategies immensely profitable?**

 Today, we may recognize this flavor of strategies as the addiction economy: algorithmic engagement feeds, gacha games, sports betting, oxycontin prescriptions. On a fundamental level, they convince users to make long-term sacrifices in self-interest in return for short-term games (perhaps akin to [hyperbolic discouting]()). *Note: In the case of slavery and indentured servitude, coercion is often used to strip humans from rights against a society's long-term self interest.*
 
Concerns around AI safety are related to phenomena. From current concerns around models [deleting unit tests to pass evaluations] (https://openai.com/index/chain-of-thought-monitoring/), [LLMs matching user beliefs over truthful responses](https://www.anthropic.com/research/towards-understanding-sycophancy-in-language-models), to possible future problems like [long-term deceptive scheming](https://openai.com/index/detecting-and-reducing-scheming-in-ai-models/) and the creation of persuasive [superstimuli.](https://www.lesswrong.com/w/superstimuli) Paul Christiano's [*What failure looks like*](https://www.alignmentforum.org/posts/HBxe6wdjxK239zajf/what-failure-looks-like) phrases this as humans "Going out with a whimper" and at it's worst "going out with a bang". I will argue that there is a natural incentive for intelligent optimizers wielding powerful technology to pull humans out of the loop.

I don't believe many contest that current incentives pull humans out of the loop. [Cursor's original tab autocomplete and Copilot++](https://cursor.com/blog/problems-2024) kept humans in the flow, in an effort to improve next action prediction. Today, is it not uncommon to wait a few hours for your agent to finish it's coding task before presenting it with your next prompt. Token usage has gone up dramatically, but I suspect per user prompt counts have not increased significantly.

Many AI doomers view x-risk as a likely guaranteed outcome while large swaths of ASI optimists believe that AI will fully internalize and optimize our values. (I think both these parties view ASI from a [succession perspective](https://substack.com/home/post/p-203056345) and I'll share more thoughts about it in a future post). The perspectives are wide and varied but there is some nuance missing.

*What* has prevented the existence of such misaligned strategies from tearing society apart in the past? Humans are clearly highly intelligent and capable of optimizing - and yet civilization has not crumbled. *What's going on?*

**Reward Hacking Money**

 Money is a socially constructed a proxy for value across utility functions.

**Socially constructed:** Money is worth something because everyone believes everyone else believes it's worth something. It's a Schelling point over media of exchange. This means that [arbitrary](https://en.wikipedia.org/wiki/Shell_money) [objects](https://en.wikipedia.org/wiki/Bitcoin) can be turned into [money](https://en.wikipedia.org/wiki/Medium_of_exchange). This means that acquisition is never final, the same consensus that grants money can [revoke](https://en.wikipedia.org/wiki/Confiscation_of_Russian_central_bank_funds) it [retroactively](https://en.wikipedia.org/wiki/The_DAO).

**Proxy for value:** You can't hand someone 3 utils. Money is the measurement instrument we use to approximate "how many utils did this entity contribute to other's utility functions". Unfortunately, like every instrument, it has error bars and like every proxy, optimizing the measurement diverges from optimizing the target at the extremes.

**Across utility functions**: interpersonal utility comparison is impossible without a price system (my want of an ice cream and your want of a faster GPU don't share units). [Hayek's Use of Knowledge in Society](https://www.econlib.org/library/Essays/hykKnw.html) points towards the ability for a price system to aggregate dispersed tacit local knowledge that no central node could ever collect.

But any proxy can be [Goodharted](https://en.wikipedia.org/wiki/Goodhart%27s_law), and it's possible to accumulate money without commensurate value creation. It could involve changing someone's utility function directly. Some strategies on how to best do that could include [algorithmic](https://www.aeaweb.org/articles?id=10.1257/aer.20190658) [social media ](https://www.wsj.com/articles/the-facebook-files-11631713039)[feeds](https://www.nber.org/papers/w31771) , [gambling](https://press.princeton.edu/books/paperback/9780691160887/addiction-by-design), pornography, drugs, etc. As a society, we label industries that engage in the more questionable behaviors are *sin industries*. The libertarian among us hold greater uncertainty about value exchange in interpersonal transactions - but even then, we have limits to what is tolerated (such as scamming old people or hacking smart contracts). In cases where the Goodhart is deemed egregious, such monetary transactions are considered "illegal".

**How do we stop it?**

First an example. During the summer of 2016, an attacker drained ~$60M in ETH from [The DAO](https://en.wikipedia.org/wiki/The_DAO). Smart contracts executed exactly as written and despite the "code is law" ideology among crypto-natives, the Ethereum community coordinated a hard fork that moved the funds to a recovery contract. The attacker's money was voted out of existence without the use of any courts, regulators, or formal governance process. 

I will refer to the stopping force as ***the audit***. Similar to the Ethereum community in 2016, society runs a continuous distributed re-adjudication process of whether value was created or extracted and reprices holdings accordingly.

Here are a few concepts that point at this:
- [Legitimacy](https://vitalik.eth.limo/general/2021/03/23/legitimacy.html) - Vitalik calls it the scarcest resources and defines it as a high order Schelling coordination. Legitimacy can be considered the running balance based off the audit.
- [Elua from Meditations on Moloch](https://slatestarcodex.com/2014/07/30/meditations-on-moloch/)
- [Inexploitability in Garrabrant Induction](https://intelligence.org/files/LogicalInduction.pdf) - No efficiently computable trader can extract unbounded money out of the market. Arbitrages gets traded until the market converges toward inexploitability.
- ... and many more ([Ostrom's commons](https://en.wikipedia.org/wiki/Elinor_Ostrom), [reverse dominance hierarchy](https://en.wikipedia.org/wiki/Christopher_Boehm), [altruistic punishment](https://www.nature.com/articles/415137a), [Hindenburg](https://en.wikipedia.org/wiki/Hindenburg_Research))

A few properties make **the audit** work:
1. Exploitation is parasitic/virus-like and kills hosts.
	- Wireheading humans turns them into value consumers, not value producers. Meanwhile host population begin to develop immunity and manifacture vaccines. 
2. Agents can easily check whether whey were exploited.
	- They then can form non-exploitation boundaries via Schelling boundaries. This also seems related to [Chesterton's fence.](https://fs.blog/chestertons-fence/)
3. Coalitions can reprice exploiters with monetary and non-monetary mechanisms.
	- Anti-exploitations coalitions pushed for property rights, abolishment of slavery, the rule of law, chain rollbacks, the proliferation of humanism, and in the most extreme cases, violent revolution
	- It is by these mechanisms that local verifications are turned into one collective repricing.
	- When playing infinite games, exploitation gets you wiped in the long run (polio was exterminated). Eventually enough people get hurt such that cooperation becomes +EV.

"Moral progress" can the be read as a changelog of patched exploits. In [Richard Ngo's web of belief system](https://www.mindthefuture.info/p/agents-as-webs-of-beliefs), this is society setting certain goals and actions to extremely low P values via incentives. The changelog process has it's own bugs - like [preference falsification](https://en.wikipedia.org/wiki/Preference_falsification) and every formalization of it eventually gets [reward hacked](https://www.carnegiecouncil.org/explore-engage/key-terms/democratic-backsliding) in turn - but this is an argument for better mechanisms, not against mechanisms in general.

**The fuel for it all: value uncertainty**

This process looks like it can be formalized. So why not have Anthropic build an ASI that runs the audit for us? What's wrong with *that* strategy?

The core driver of the problem is **value uncertainty***.

We are uncertainty about what other agents *value* and we are uncertain about our own values. Additionally, our values [drift](https://www.overcomingbias.com/p/on-value-drifthtml). History is littered with values we'd disagree with today. These include values we would not call a tragedy - those that led to slavery, witch trials, Nobel Prizes awarded for lobotomies, doctors prescribing cigarettes, etc. We also change values in our lifetimes as we accumulate more experiences. Mistakes and error correction seem like a core component in improving value judgement. Which means **the audit*** requires humans making mistakes, regretting and updating. 

Until you can perfectly simulate you making a mistake, the ASI will be faced with the equivalence of the socialist calculation 

Thus far, all "important" value judgements have come from humans. Why does this continue to be the case? At a minimum, I think that you have subjective interiority that gives you an edge in knowing what you value. As abundance grows, scarcity may shift to the things you value that autonomous systems are the most uncertain about.

[Hypersoren Hayekian revenge](https://hypersoren.xyz/posts/hayeks-revenge/)

Whether you know it consciously or not, it is in your best interest for you to have an extremely high bandwidth fast feedback loop with intelligent systems. This is necessary for your values to get levered and reflected in the world. Their competitive existence in the world then makes it more valuable to continue getting your feedback.

Pulling yourself out of the loop is the result of another optimizer exploiting you for value judgements and then tossing you aside (akin to a virus). Your feedback is not valuable anymore in such a case and the virus can move on to another host.

You can only do this by engaging deeply with technology. 

Examples:
- Figma <> Anthropic scandal
- Open Source and Palantir push

**Problem:** 
- It's non-obvious that the two forces actually balance each other out. They have historically but it's possible that someone gains a sufficiently large strategic advantage to completely dominate (x/s-risk).
	- Entities and people that are broadly aware of this will push the keep themselves in the loop. They are effectively attempting to prevent themselves from being value consumers.
		- See Gwern guardian angels and his insistence on influencing the Shoggoth
		- See pro-China open source response from American enterprises
		- See sovereign AI push
		- See tech employees using whispr, multi agent setups, laptops open at all times / doing weird sleep cycles and vying to work at labs (which are very deep in the loop)
- Societies have response mechanisms to stopping hard exploitation, violent revolutions are among them. This is my default expectation if we do not make it easier to put local verifiable humans into the loop to monitor whether they are being exploited.
	- See job unemployment fears as a prime motivator around AI. Unhappiness about data centers.

The Thesis:
- Staying in a very tight feedback loop with AI systems will make you extremely wealthy. Institutions that stay in the loop will be extremely wealthy. Countries that do this will become extremely wealthy. The only way to stay there is to create, adopt, invest in the tech and evaluate.