
Core pieces:
- Money is a subjective construct that allows us to trade between utility functions?
- You can reward hack money and other people's utility functions?
- Web of belief, cognitive security, increased leverage (how might this have much to do with garrabrant induction, schelling points, etc)
- What is value uncertainty and how does it relate to AI alignment?
- What does this have to do with staying in the loop, safety, and succession?

tldr; 
- there is a natural force to pull you (and humans) out of the loop (changing people's reward functions) -> reward hacking optimizer
- there seems to be an equal counterbalancing force -> legitimacy
	- legitimacy is a schelling point strategy granted to entities that are non-exploitative against utility functions
- remaining in the loop via the use of technology will make you immensely wealthy. keeping humans in the loop will make society immensely wealthy.

What success looks like

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

**Accross utility functions**:
 
 since any proxy can be GoodHarted,  it is possible to create money without necessarily capturing the confederate value creation of others. What exactly would that look like? I think what I would do is if someone is able to change your utility function  directly effectively converting from value producer to value consumer

 Insert data from studies on algorithmic feeds as well as gambling changing people's minds

  this is a natural, incremental and profitable strategy. We label a number of these strategies as sin industries. Drugs, gambling, pornography, etc. The more libertarian among us hold greater value uncertainty and find that adults have the right to transact however they may please. But even then there are limits to what we are willing to tolerate (scamming old people, DAO hack). In such cases, we consider such monetary transactions void and we don't let people acquire money in such regard.

**How do we stop it?**
There's a few concepts that point at this:
- Elua from Meditations on Moloch
- Legitimacy
- Garrabrant's inexploitability criterion

There are a few parameters which help us fight such forces:
1) Exploitation is a virus/parasite-like strategy under selective pressure. Your hosts ultimately die. Granted that such systems, not for nothing, happen to persist even today
2) Exploitation is locally verifiable by agents against their experience
	1) Studies about regrets about gambling, drugs, sin industries (i'm willing to have my mind changed btw). but overall the message is that people don't want to engage in repeat transaction
	2) Enough agents form non-exploitation boundaries via a Schelling boundary
3) Coalition reprice exploiters. They create mechanisms and institutions that punish exploitation
	1) Property rights, humanism, abolishment of slavery, rule of law, revolution, prison, legitimacy, legitimate chain rollbacks in the case of the DAO hack
		1) This is effectively the creation of vaccines and extermination of Polio
			1) Long term exploitation gets you wiped
	2) Enough people get hurt by exploitation that eventually it is +EV to cooperate again

"Moral progress" can be viewed as a changelog of patched exploits. In Richard Ngo's web of belief system, this is effectively the setting of certain goals to exteremly low P values across society. (some issues that arise from this are things like preference falsification) and mechanisms that try to formalize this behavior inevitably have their own problems as they get reward hacked ("democratic backsliding", "buying votes", etc.) but it just means we need to improve our mechanisms.

**The fuel for it all: value uncertainty**

Not only do we have uncertainty about what other entities value, we have uncertainty about our own values. (insert some work from Robin Hanson on cultures changing values and whether we would want to have the values of our ancestors)

Insert mistakes in history and the fact that values change to begin with. Not only does this happen through history but this happens in our lifetimes.

Until now value has come from humans. It's in your best interest, whether you know it consciously or not, to be extremely deep in the loop. Pulling yourself out of the loop is the result of an optimizer exploiting you and then tossing you aside. Your feedback is not valuable anymore. 

In some sense this is what HyperSoren is pointing at and it's a very hayekian take (insert Hayek's revenge)

You cannot do this by refusing to engage with technology, instead you must go into the deep end. The optimizer is getting better, your feedback needs to become more valuable else the optimizer will push for someone else's utility function.

Examples:
- Figma <> Anthropic scandal
- Open Source and Palantir push

**Problem:** 
- It's non-obvious that the two forces actually balance each other out.
	- Entities and people that are broadly aware of this will push the keep themselves in the loop. They are effectively attempting to prevent themselves from being value consumers.
		- See Gwern guardian angels and his insistence on influencing the Shoggoth
		- See pro-China open source response from American enterprises
		- See sovereign AI push
		- See tech employees using whispr, multi agent setups, laptops open at all times / doing weird sleep cycles and vying to work at labs (which are very deep in the loop)
- Societies have response mechanisms to stopping hard exploitation, violent revolutions are among them. This is what will happen if we do not make it easier to put local verifiable humans into the loop to monitor whether they are being exploited.
	- See job unemployment fears as a prime motivator around AI. Unhappiness about data centers.

The Thesis:
- Staying in a very tight feedback loop with AI systems will make you extremely wealthy. Institutions that stay in the loop will be extremely wealthy. Countries that do this will become extremely wealthy. The only way to stay there is to create, adopt, invest in the tech and evaluate.