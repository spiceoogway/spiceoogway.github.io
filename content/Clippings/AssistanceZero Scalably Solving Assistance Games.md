---
title: "AssistanceZero: Scalably Solving Assistance Games"
source: "https://cassidylaidlaw.github.io/minecraft-building-assistance-game/#videos"
author:
published:
created: 2026-07-09
description:
tags:
  - "clippings"
---
[Cassidy Laidlaw](https://cassidylaidlaw.com/), [Eli Bronstein](https://elibronstein.com/), Timothy Guo, Dylan Feng, Lukas Berglund, [Justin Svegliato](https://justinsvegliato.com/), [Stuart Russell](https://people.eecs.berkeley.edu/~russell/), and [Anca Dragan](https://people.eecs.berkeley.edu/~anca/)

**ICML 2025**

We develop a scalable approach to solving *assistance games*, which are an alternative paradigm to RLHF for training helpful and harmless assistants. We demonstrate our approach in a new environment, the **Minecraft Building Assistance Game (MBAG)**, where an assistant helps a user build a house that is unknown to the assistant. Here, we provide [code for MBAG and the experiments in the paper](#code). We also present [videos from our human study](#videos).

![](https://cassidylaidlaw.github.io/minecraft-building-assistance-game/website/assistance-games-vs-rlhf.png)

*Assistance games are an alternative paradigm to RLHF for developing helpful and harmless AI assistants. In RLHF (top), an assistant policy is trained to take in the environment state (e.g., human chat messages) and produce an action (e.g., a response message). The assistant policy is trained to maximize a reward function which is learned from human feedback. In contrast, in assistance games (bottom), the human is assumed to be another agent acting in the same environment as the assistant, rather than an exogenous source of feedback. The human and assistant share a reward function, but it depends on *reward parameters* that are initially known only to the human.*

## Code

The code for MBAG and the experiments in the paper is available at [https://github.com/cassidylaidlaw/minecraft-building-assistance-game](https://github.com/cassidylaidlaw/minecraft-building-assistance-game). The README at that link contains instructions for running our assistants in MBAG.

## Videos

All videos are shown at 2x real time.

### Emergent behaviors from AssistanceZero

Our assistant trained for MBAG using assistance games learns to exhibit a variety of behaviors that are helpful to users. Here, we show three examples of emergent behaviors from AssistanceZero, our algorithm for solving assistance games. These are the same three examples shown in Figure 1 of the paper.

![](https://www.youtube.com/watch?v=i0aIlvdBw7s)

***Digging a foundation:** the assistant watches the human outline the house's foundation. Then, the assistant breaks blocks within the outline and they finish the foundation together.*

![](https://www.youtube.com/watch?v=03ewwcixvBU)

***Building a roof:** the assistant watches the human start building the roof of the house. Then, the human is able to work on other parts of the house while the assistant continues working on the roof.*

![](https://www.youtube.com/watch?v=8e07pQ8YXYI)

***Learning from corrections:** the assistant has built the stone walls of the house one block too tall. The human breaks one of the incorrect blocks. The assistant learns from its mistake and helps the human break the remaining incorrect blocks.*

### Full videos from our human study

In our human study, sixteen participants built houses under four conditions: building alone, building with our AssistanceZero assistant, building with an expert human assistant, and building with a supervised fine-tuning (SFT) assistant. Each participant was assigned a different house but built the same house under all four conditions. The assistants could not directly see the goal structure during the study; only the participants were able to see their goal as a transparent blueprint while they played. None of the assistants, including the human assistant, had previously seen the houses. Here, we show two participants from the study under all four conditions.

#### Participant ID 25

![](https://www.youtube.com/watch?v=VzcpuX1TuNU)

*No assistant*

![](https://www.youtube.com/watch?v=f8s1VnFpkRM)

*AssistanceZero assistant*

![](https://www.youtube.com/watch?v=hXXbmZiiO0I)

*Expert human assistant*

![](https://www.youtube.com/watch?v=uwISATc9wlE)

*SFT assistant*

#### Participant ID 31

![](https://www.youtube.com/watch?v=QcutANiJ3jU)

*No assistant*

![](https://www.youtube.com/watch?v=iGlIsJRkFe8)

*AssistanceZero assistant*

![](https://www.youtube.com/watch?v=b6OhQDHrgUM)

*Expert human assistant*

![](https://www.youtube.com/watch?v=QKGuxPotHCE)

*SFT assistant*

<iframe allow="clipboard-write; web-share" src="chrome-extension://cnjifjpddelmedmihgijeibhnjfabmlf/side-panel.html?context=iframe"></iframe>