---
title: "The Keats Test"
source: "https://www.reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/"
author:
  - "[[philbearsubstack]]"
published: 2026-07-13
created: 2026-07-16
description: "Background I have published quite a bit on the internet, and for whatever reason, Claude is surprisingly aware of it. This got me thinking"
tags:
  - "clippings"
---
**Background**

I have published quite a bit on the internet, and for whatever reason, Claude is surprisingly aware of it. This got me thinking *can Claude predict undisclosed features of a person based on a large corpus of writing?*

My plan is to put a floor on a question that has always fascinated me- in principle how much of a person is reconstructable from their writing? In Dan Simmons's Hyperion one of the character is John Keats- psychologically cloned from his writing by advanced superintelligences. The conceit is that through unbelievably subtle features of his writing, even things like childhood memories leak through. Obviously this is not achievable with current language models, but it would be fascinating to see how much of the soul is on the page.

My plan, which is still under development, is to find at least 20 famous and demi-famous writers willing to answer a questionaire (the hard part) by ranking a series of four options from most like them to not like them. The questions have to be *psychologically interesting* but not *too revealing* since I will by necessity have access to the answers of writers, and I cannnot guarantee with total certainity that the results will not leak. Thus questions directly on trauma, prior wrongdoing, deviance, dark secrets, questions that could be relationally compromising etc. are not permissible. What follows is the list I have so far.

The scoring metric, naturally, will be *capacity to model a particular author above a baseline of simply selecting the most popular choice for all questions.*

Because this would be a pretty major undertaking (lobbying even moderately famous people to answer a series of questions is not an easy task) I'm keen to refine the idea as precisely as possible before proceeding. Your comments on the methodology, suggestions for additional questions etc. would be greatly appreciated.

**Draft questions (about half done)**

Which superpower would you pick from this list? Do not try to optimise or “game it”, pick the option that most calls to you \[predict moderate results\]:

1.      Mind reading

2.      Invisibility

3.      Flight

4.      Shapeshifting

Which of these attributes do you most admire in others? Do not try to optimise or “game it”, answer with your gut. \[Predict strong results\]

1.      Justice

2.      Mercy

3.      Courage

4.      Honesty

Which do you fear losing most? Pick on the basis of which you spend the most energy worrying about losing \[predict strong results\].

1.      Your physical health

2.      Your mind

3.      Your reputation

4.      Your material security

You must spend a month playing a computer game. Fortunately, the game will be designed for you from the ground up with instructions from yourself. First up, you pick from one of these options. \[Predict strong results\]

1.      A puzzle game (you solve puzzles)

2.      An RPG (you are on a quest to achieve some goal, and your character gains experience and resources over time)

3.      A city builder (you design and grow a city)

4.      A shooter (you have to move through a 3D environment shooting at enemies and avoiding being hit).

Which of these lines of poetry do you like best? Go with your gut, not what you think you ‘should’ say. \[Predict weak-moderate results\]

1. "My prime of youth is but a frost of cares"
2. "For he counteracts the powers of darkness by his electrical skin and glaring eyes"
3. “It's autumn in the country I remember"
4. "If there were dreams to sell, / What would you buy?"

Which of these humanoid mythical entities do you like best aesthetically? Go with your gut, not what you think you ‘should’ say. \[Predict strong moderate results\]

1.      Angel

2.      Fae

3.      Djinn

4.      Vampire

Which of these songs do you like best? \[Predict weak moderate results\]

1.      A thousand miles (A thousand miles)

2.      Total eclipse of the heart (Bonnie Tyler)

3.      I want it that way (Backstreet boys)

4.      Wannabe (spice girls)

Which of the following series do you prefer? (Need a fourth option) \[Predict strong moderate results\]

1.      Star wars

2.      Star trek

3.      The Matrix

From someone whose judgment you fully respect, which compliment would please you most (Do not optimise, pick the answer that calls to you emotionally): \[Predict moderate results\]

1.      Brilliant

2.      Kind

3.      Brave

4.      Funny

Vice you excuse most? (Do not optimise, pick the answer that calls to you emotionally) \[Predict weak moderate results\]

1.      Hot temper

2.      Vanity

3.      Greed

4.      Cowardice

Vice you excuse least? (Do not optimise, pick the answer that calls to you emotionally) \[Predict moderate results\]

1.      Hot temper

2.      Vanity

3.      Greed

4.      Cowardice

The strongest force shaping who you became \[Predict strong moderate results partly based on direct statements adjacent\]:

1.      A person

2.       A book or idea

3.      An event or period of hardship

4.      A place or milieu

If you were going to be famous for your work, in what way would you want to be famous \[predict moderate results\]

1.      Your writing would be famous, but you personally totally anonymous

2.      Known and admired personally for your writing

3.      You and your work influential among the few who matter

4.      Not famous at all

If a crystal ball could tell you the truth about yourself, your life, the future, what would you ask (Do not optimise, pick the answer that calls to you emotionally) \[Predict weak-moderate results\]

1.      Your future

2.      The future of your writing

3.      The future of a loved one

4.      Nothing

Moved homes in childhood \[predict weak results except by direct statement\]

1.      Never

2.      Once or twice

3.      3-5 times

4.      6+ times

When it comes to trusting people, your experience has taught you that \[predict strong results\]:

1.      Trust is almost always rewarded

2.      Trust is usually rewarded, with painful exceptions

3.      Caution is usually warranted

4.      Trust is usually a mistake.

Vividness of your mind's eye, 4-point.

---

## Comments

> **Open\_Seeker** · [2026-07-14](https://reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/oxg5iwl/) · 4 points
> 
> that guy 'tracingwoodgrains' on twitter said claude figured out who he was based on his reading history

> **gwern** · [2026-07-14](https://reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/oxf7g7y/) · 4 points
> 
> The problem with this approach is that it conflates [truesight](https://gwern.net/doc/statistics/stylometry/truesight/index) with chatbot willingness and ability to verbally answer. It doesn't quantify the total truesight in any interesting way like [variance components might](https://gwern.net/sae-truesight) or [past exercises](https://arxiv.org/abs/2310.07298). LLMs know many more things than they can say (just like humans), and things like calibration can be found in their latent space before they are able to verbally report confidence on demand. Especially for unique new questions, it is unlikely that you get anything but a loose lower bound from quizzing LLMs; my expectation is that you won't see much above the random guessing floor. Your sample questions also sound dangerously guessable with no knowledge of the author, never mind simple extrapolation from their fiction or writing of the sort which would not impress anyone. (If Stephen King answered 'Caution is usually warranted' in trusting people, would you be surprised or need to have read a single novel by him?)
> 
> Incidentally, I think something like the Keats cybrid is a useful project and am currently [working on it](https://gwern.net/guardian-angel).
> 
> > **philbearsubstack** · [2026-07-14](https://reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/oxfi9wb/) · 2 points
> > 
> > There's a few ideas to try and probe how much the LLM really knows. An "answer as if you were them" condition. Looking directly at the logits of an open model and using them to derive probabilities instead of using the model's stated probabilities. Trying to get useful work out of an open base model \[input some of Scott Alexander's prose, make it look like he's turning to consider the question and give the ranking, have the model complete the fragment\]. Of course, eliciting implicit knowledge is simply a hard problem, and without a solution we're going to perform less well than we could, but I don't necessarily think that takes us down to zero. A big part of the problem in my trial runs has been that the LLM tries to tell a compelling narrative - to spin a fascinating story about how it all comes together in the author's psyche, and of course that's the wrong approach \[except when it isn't\]. Hence in design I've been largely focused on trying to think about extracting an answer in a way that doesn't encourage creative writing about the subjects.
> > 
> > The questions vary a great deal in how hard they are, that's certainly true. Trust or not trust tends to be quite close to the surface in both fiction and non-fiction. The questions also vary in psychological centrality quite a bit, with psychological centrality tending to relate to guessability (fortunate for the would be reconstructor I suppose). I am interested in reconstruction even when it is not spectacular, especially if it is the kind of reconstruction that can do useful work, or that represents a privacy threat people should be aware of.
> > 
> > One proposal here is to use a humans guessing about their favourite authors baseline- see how much the model can beat it, if at all. That allows us to quantify something like impressiveness as well as accuracy. Both a typical individual and a wisdom of the crowds baseline would be interesting here \[and the wisdom of the crowds’ baseline is fascinating in its own regard- if the crowd can already reconstruct the interesting and non-obvious bits of the soul from the page, that's worth reporting on\].
> > 
> > I'm not sure what you mean by guessable with no knowledge of the author? I take it you mean "no knowledge except demographic factors". Since the metric is performance over guess the modal response, it should only be possible to to get a metric above baseline with at least demographic knowledge of the author. Now with regards to beating demography, It's helpful in this regard that we can ask the model for its predictions regarding an unspecified famous author in a particular age, gender and nationality category. This gives us sense of how much marginal work the author's specific production is doing. We can even add genre to our prediction controls \[although I’m a bit of a purist here- my inclination is to say that if an author’s genre alone discloses surprising facts, that counts as reconstructing them from their production.\] The ideal output of this project looks like LLM performance v a series of ever more stringent baselines, with the reader able to make a call as to what the fair comparision is.
> > 
> > I like your proposal to have Guardian angels act as political fiduciaries. [I’ve written about similar things before.](https://philosophybear.substack.com/p/the-end-of-politics?utm_source=publication-search) One idea here is that staggering amounts of bargaining become possible with LLMs, and so the challenge is to imagine a world in which not just economic but institutional/political transaction costs are closer to zero than they are now. No rational ignorance. Greatly reduced coordination problems.
> > 
> > **Modmonsters** · [2026-07-14](https://reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/oxj5r9h/) · 1 point
> > 
> > You might be interested in some of anthropics new work on latent thought spaces in LLMs. It's pretty easily recreatable (and there are at least a couple indie projects on github that have already recreated it). It allows you to see the blank thought space that models inhabit during prefill and generation. And it is very telling of the many internalizations that never make it to the end user.

> **happysmash27** · [2026-07-15](https://reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/oxm217p/) · 1 point
> 
> > Which do you fear losing most? Pick on the basis of which you spend the most energy worrying about losing \[predict strong results\].
> > 
> > 1.      Your physical health
> > 
> > 2.      Your mind
> > 
> > 3.      Your reputation
> > 
> > 4.      Your material security
> 
> Hmm. That's a weird question.
> 
> The one I'm most scared of losing is my mind, but as it's not currently very likely for me to lose it, I spend most of my time worrying about material security in practice. Material security is simply the biggest risk when one is young and without a big safety net… I would say this is more a factor of my current circumstances than personality.
> 
> > Which of these humanoid mythical entities do you like best aesthetically? Go with your gut, not what you think you ‘should’ say. \[Predict strong moderate results\]
> > 
> > 1.      Angel
> > 
> > 2.      Fae
> > 
> > 3.      Djinn
> > 
> > 4.      Vampire
> > 
> > Which of these songs do you like best? \[Predict weak moderate results\]
> > 
> > 1.      A thousand miles (A thousand miles)
> > 
> > 2.      Total eclipse of the heart (Bonnie Tyler)
> > 
> > 3.      I want it that way (Backstreet boys)
> > 
> > 4.      Wannabe (spice girls)
> 
> I would need to look many of these references up to answer. Is this possibility factored in?
> 
> > Moved homes in childhood \[predict weak results except by direct statement\]
> > 
> > 1.      Never
> > 
> > 2.      Once or twice
> > 
> > 3.      3-5 times
> > 
> > 4.      6+ times
> 
> Does it count as a move if your parents are divorced and you're constantly shuffling between houses? Whether yes or no, I guess if one parent had a stable house and the other constantly moved around that would still count as many many moves?

> **HedonicEscalator** · [2026-07-14](https://reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/oxf6kfo/) · 1 point
> 
> > (Need a fourth option)
> 
> Dune or Doctor Who are valid choices for mainstream sci-fi.
> 
> > **philbearsubstack** · [2026-07-14](https://reddit.com/r/slatestarcodex/comments/1uvxjvx/the_keats_test/oxfiffs/) · 1 point
> > 
> > Dr Who potentially works but is very British Commonwealth, it's probably my best bet so far. Dune is difficult because it's primary form is a well regarded book, and I fear the authors are going to favour the option with a book attached, breaking the movie to movie comparision.