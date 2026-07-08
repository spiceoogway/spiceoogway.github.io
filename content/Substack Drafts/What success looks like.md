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

I will refer to the stopping force as ***the audit***. Society is running a continuous distributed re-adjudication process of whether value was created or extracted and reprices you accordingly.

Here's a few concepts that point at this:
- [Legitimacy](https://vitalik.eth.limo/general/2021/03/23/legitimacy.html) - Vitalik calls it the scarcest resources and defines it as a high order Schelling coordination. Legitimacy can be considered the running balance based off the audit.
- [Elua from Meditations on Moloch](https://slatestarcodex.com/2014/07/30/meditations-on-moloch/)
- [Inexploitability in Garrabrant Induction](https://intelligence.org/files/LogicalInduction.pdf) - No efficiently computable trader can extract unbounded money out of the market. Arbitrages gets traded until the market converges toward inexploitability.
- (I"D LIKE TO INCLUDE MORE EXAMPLES)

There are a few parameters that seem to help us fight such forces:
- Exploitation is a virus/parasite-like strategy. Your hosts ultimately die. That said, in the interim they survive. Humanity not only strengthens it's immune system but is also capable of building targeted vaccines. 
	- True wealth ends up being wealth that survives **the audit*** (and a subsequent introduction of a vaccine).
- Exploitation is locally verifiable by self-aware against their experiences.
	- (INSERT STUDIY ABOUT REGRETS RELATED TO CERTAIN GOODS/SERVICES) gambling drugs, sin industries
	- Exploited agents form non-exploitation boundaries via Schelling boundaries since it's cheap for every agent to verify if they were exploited. This also seems related to Chesterton's fence in some sense.
- Coalition reprice exploiters. They create mechanisms and institutions that punish exploitation
	1. Property rights, humanism, abolishment of slavery, rule of law, revolution, prison, legitimacy, legitimate chain rollbacks in the case of the DAO hack
	    1. This is effectively the creation of vaccines and extermination of Polio
	        1. Long term exploitation gets you wiped
	2. Enough people get hurt by exploitation that eventually it is +EV to cooperate again

"Moral progress" can be viewed as a changelog of patched exploits. In Richard Ngo's web of belief system, this is effectively the setting of certain goals to exteremly low P values across society. (some issues that arise from this are things like preference falsification) and mechanisms that try to formalize this behavior inevitably have their own problems as they get reward hacked ("democratic backsliding", "buying votes", etc.) but it just means we need to improve our mechanisms.

**The fuel for it all: value uncertainty**

Okay we can all agree reward hacking is bad. Let's just skip to the end (have Anthropic build an ASI that solves this problem for us). Why can't we just do that?

Punting the problem to ASI doesn't resolve the core driver of the problem. Values are uncertain.

Not only do we have uncertainty about what other entities value, we have uncertainty about our own values. Robin Hanson has been pointing at [cultural drift](https://www.overcomingbias.com/p/on-value-drifthtml) for years.

Insert mistakes in history and the fact that values change to begin with. 
- slavery
- witch trials
- lobotomies
- cigarettes
This happen through history and in our lifetimes. It is likely that you have rolled back values you were certain of 10 years ago. It seems as though mistakes are a core component of improvements in wealth, and it's unclear whether you can simulate or automate mistake having.

Thus far all "important" value judgements have come from humans. Why does this continue to be the case? At a minimum, you will know what you value better than an AI does. As abundance grows, scarcity shift to the things you value that autonomous systems are the most uncertain about.

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