---
title: "CS 287H: Algorithmic Human-Robot Interaction"
source: "https://people.eecs.berkeley.edu/~anca/AHRI.html"
author:
published:
created: 2026-07-09
description:
tags:
  - "clippings"
---
### Welcome to CS 287H Algorithmic Foundations of Human-Robot (and Human-AI) Interaction, Spring 2023!

**Instructor:** [Anca Dragan](http://www.ancadragan.com/) (anca at berkeley dot edu)

**GSI:** [Cassidy Laidlaw](https://cassidylaidlaw.com/) (cassidy\_laidlaw at berkeley dot edu)

**Lectures:** TuTh, 2-3:30pm, [Soda 310](https://www.berkeley.edu/map/?soda)

### Description

As robot autonomy advances, it becomes more and more important to develop algorithms that are not solely functional, but also mindful of the end-user. How should the robot move differently when it's moving in the presence of a human? How should it learn from user feedback? How should it assist the user in accomplishing day to day tasks? These are the questions we will investigate in this course.

We will contrast existing algorithms in robotics with studies in human-robot interaction, discussing how to tackle interaction challenges in an algorithmic way, with the goal of enabling generalization across robots and tasks. We will also sharpen research skills: giving good talks, experimental design, statistical analysis, and literature surveys.

### Format

This course combines lectures with paper presentations by the students, encouraging both fundamental knowledge acquisition as well as open-ended discussions. Each student will also carry out an individual research project OR an in-depth literature survey.

### Learning Objectives

At the end of this course, you will have gained both knowledge/abilities related to human-robot interaction, as well as to research and presentation skills:

- Human-robot interaction abilities
	- articulate the challenges of developing algorithms that support HRI
		- apply optimization techniques to generate motion for HRI
		- contrast and relate model-based and model-free learning from demonstration
		- apply Bayesian inference and learning techniques to enhance coordination in collaborative tasks
		- develop a basic understanding of verbal and non-verbal communication
		- ground algorithmic HRI in the relevant psychology background
- Research skills
	- communicate scientific content to a peer audience
		- analyze and diagram the literature related to a particular topic
		- critique a scientific paper's experimental design and analysis

### Prerequisites

There are no official prerequisites but a knowledge of probability and multivariate calculus is expected.

### Grading

- **Student Presentations (30%):** Each student will get the opportunity to present. You will be graded based on your level of insight into the material (including how well you answer questions from us and the rest of the class), how well you relate the paper to other papers and lecture material, as well as how well you present the material to the class and lead a discussionn. There will be 2 presenters for each paper. We will have 2-3 papers per lecture.
- **Quizzes (15%):** We will have a set of (pandemic update: take-home) quizzes (10 min each), to test the understanding of the material. These quizzes are not meant to be onerous, but are meant to ensure that you read carefully through the papers and revisit the lecture notes. They are graded with a check, a minus, or a plus for particularly good answers.
- **Homework (15%):** New this year, responding to feedback from previous years, we will develop a few (2-3) homework assignments. We will grade these lightly, and mainly take the opportunity to get feedback from you and refine them.
- **Final Project (30%):** You have a choice between a research project, and an in-depth literature survey (~50 relevant papers, organized by different features, identifying gaps in the state of the art). You will have a final presentation, and submit a proposal along the way (1 page) and a report (up to 5 pages) at the end.
- **Participation (10%):** Be engaged! Ask and answer questions!
- ***Important fine print:*** Despite these percentages, you will not pass this class if you don't submit a proposal and a final report for your project, if you don't present your final project, or if you don't show up for class regularly (even if your computed final score is above passing).

### Expectations

You can expect me to start and end class on time, devise quizzes that adequately cover the material, and grade your quizzes and send you feedback on your presentations in a timely manner. In turn, I can expect you to come to class (pandemic update: Zoom) on time, be attentive and engaged in class, and refrain from using laptops (pandemic update: using laptops to do other tasks outside of attending lecture), cell phones and other electronic devices during class. Please take notes, and ask questions when something is not clear. I also expect you to spend an adequate amount of time on the readings each week (~3 hours), and spend ~60 hours on your final project.

### Important Dates

- **April 4:** 1 Page Proposal (by this time you should have a clear idea of what you want to do and what your key insight is in the case of a project, and how you will select and classify papers in the case of a literature survey); Please discuss project ideas with the GSI and also feel free to email Anca.
- **April 25 & 27:** Final Presentations
- **May 9:** Final Reports (ideally start gearing up for a paper submission)

### Project Proposal Instructions

They should be 1 page (+ references).

If you are doing a research project:

- motivate the problem
- briefly describe how state of the art tackles it and what is missing
- state your key insight clearly
- scope your project to be what you would do for 1 paper; you don't have to have all results for the project, you can have just preliminary result at the end of the semester, but choose a problem that is not trivial and not an entire PhD thesis either

If you are doing a literature survey:

- describe the topic
- describe how you will find papers -- what proceedings will you search, what keywords on google scholar, what starting papers;
- what are the inclusion criteria -- how are you going to decide whether to include a paper or not
- provide 5-10 initial papers
- provide the groups/axes/independent variables you want to use to categorize the field

#### Possible venues for projects

- Conference Papers: NeurIPS, CoRL, WAFR, ICRA, HRI, RSS
- Short Papers: HRI Late Breaking Report

### Schedule

Find a tentative schedule below. **This is subject to change.**

<table><thead><tr><th>#</th><th>Date</th><th>Topic</th><th>Reading</th><th>Notes</th></tr></thead><tbody><tr><td>1</td><td>Jan 17</td><td>What is Algorithmic HRI?</td><td>none</td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/Intro2023.pdf">slides</a></td></tr><tr><td colspan="5">Part 1: How to optimize cost/reward</td></tr><tr><td>2</td><td>Jan 19</td><td>Trajectory Optimization 1 – Lecture</td><td></td><td></td></tr><tr><td>3</td><td>Jan 24</td><td>Trajectory Optimization 2 – Lecture</td><td></td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/Presentations%202023.pdf">presentations guide</a><br><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/example-chandrayee.pptx">example 1</a><br><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/example-jaime.key">example 2</a></td></tr><tr><td>4</td><td>Jan 26</td><td>Trajectory Optimization 3 – Lecture</td><td></td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/Trajectory%20optimization%202023.pdf">all trajopt notes</a></td></tr><tr><td>5</td><td>Jan 31</td><td>Traj Opt in robotics – Papers</td><td><ul><li>"Elastic Bands: Connecting Path Planning and Control" (1993) <a href="https://khatib.stanford.edu/publications/pdfs/Quinlan_1993_ICRA.pdf">link</a></li><li>ILQR <a href="https://homes.cs.washington.edu/~todorov/papers/LiICINCO04.pdf">link</a></li></ul></td><td></td></tr><tr><td>6</td><td>Feb 2</td><td>Traj Opt in HRI – Papers</td><td><ul><li>"Planning human-aware motions using a sampling-based costmap planner" (2011) <a href="http://ieeexplore.ieee.org/xpls/abs_all.jsp?arnumber=5980048">link</a></li><li>“Spacetime constraints” (jumping Luxo lamp) (1988) <a href="https://www.cs.toronto.edu/~jacobson/seminar/witkin-and-kass-1988.pdf">link</a></li></ul></td><td></td></tr><tr><td>7</td><td>Feb 7</td><td>Intro to MDPs, RL, POMDPs, Games – Lecture</td><td></td><td></td></tr><tr><td colspan="5">Part 2: What cost/reward to optimize</td></tr><tr><td>8</td><td>Feb 9</td><td>Inverse Reinforcement Learning – Lecture</td><td><em>Further reading:</em><ul><li>"Maximum Margin Planning" (2006) <a href="http://www.ri.cmu.edu/publication_view.html?pub_id=5405">link</a></li><li>"Maximum Entropy IRL" (2010) <a href="https://ai.stanford.edu/~amaas/papers/amaas_aaai.pdf">link</a></li><li>"Bayesian IRL" (2007) <a href="https://www.ijcai.org/Proceedings/07/Papers/416.pdf">link</a></li></ul></td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/IRL2%20Copy.pdf">IRL notes</a></td></tr><tr><td>9</td><td>Feb 14</td><td>Learning rewards from human input – Lecture</td><td><em>Further reading:</em><ul><li>“Reward rational implicit choice” <a href="https://arxiv.org/abs/2002.04833">link</a></li><li>"Learning robot objectives from physical human interaction. <a href="http://proceedings.mlr.press/v78/bajcsy17a/bajcsy17a.pdf">link</a></li><li>"Preferences implicit in the state of the world. <a href="https://arxiv.org/abs/1902.04198">link</a></li></ul></td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/Reward%20rational%20choice.pdf">RRiC notes</a></td></tr><tr><td>10</td><td>Feb 16</td><td>Imitation Learning (aka skip the reward middleman) – Lecture</td><td><em>Further reading:</em><ul><li>"Learning Attractor Landscapes for Learning Motor Primitives" (2003) <a href="http://papers.nips.cc/paper/2140-learning-attractor-landscapes-for-learning-motor-primitives.pdf">link</a></li><li>"Movement Primitives via Optimization" (2015) <a href="https://www.ri.cmu.edu/pub_files/2015/5/DMP_IEEE.pdf">link</a></li></ul></td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/Imitation%20learning.pdf">Imitation notes</a></td></tr><tr><td>11</td><td>Feb 21</td><td>How babies learn from human behavior – Papers</td><td><ul><li>“Understanding the intentions of others” (1995) <a href="https://psycnet.apa.org/record/1996-00934-001">link</a></li></ul><br>2 short papers:<ul><li>"Rational Imitation in Preverbal Infants" (2002) <a href="http://www.nature.com/nature/journal/v415/n6873/pdf/415755a.pdf">link</a></li><li>and as background to explain it: "Infant Imitation After a 1-Week Delay" (1988) <a href="https://www.ncbi.nlm.nih.gov/pmc/articles/PMC4137879/">link</a></li></ul></td><td></td></tr><tr><td>12</td><td>Feb 23</td><td>Learning from feedback – Papers</td><td><ul><li>"Deep Reinforcement Learning from Human Preferences" <a href="https://proceedings.neurips.cc/paper/2017/file/d5e2c0adad503c91f91df240d0cd4e49-Paper.pdf">link</a></li><li>"Training language models to follow instructions with human feedback" <a href="https://arxiv.org/abs/2203.02155">link</a></li></ul><br><em>Further reading:</em><ul><li>Active "Preference-Based Learning of Reward Functions" <a href="https://people.eecs.berkeley.edu/~anca/papers/RSS17_comparisons.pdf">link</a></li><li>"Learning Human Objectives by Evaluating Hypothetical Behavior" <a href="https://arxiv.org/abs/1912.05652">link</a></li><li>"Batch Active Preference-Based Learning for Reward Functions" <a href="http://iliad.stanford.edu/pdfs/publications/biyik2018batch.pdf">link</a></li></ul></td><td></td></tr><tr><td>13</td><td>Feb 28</td><td>Learning in HRI – Papers</td><td><ul><li>"Trajectories and Keyframes for Kinesthetic Teaching" (2012) <a href="http://www.cc.gatech.edu/social-machines/papers/akgun12_hri_keyframes.pdf">link</a></li><li>"Designing Robot Learners that Ask Good Questions" (2012) <a href="http://www.cc.gatech.edu/social-machines/papers/cakmak12_hri_active.pdf">link</a></li></ul><br><em>Further reading:</em><ul><li>"Using Perspective Taking to Learn from Ambiguous Demonstrations" (2006) <a href="https://robots.media.mit.edu/wp-content/uploads/sites/7/2015/01/breazeal-etal-RAS-06.pdf">link</a></li></ul></td><td></td></tr><tr><td colspan="5">Part 3: Collaboration, assistance, and coordination</td></tr><tr><td>14</td><td>March 2</td><td>Designing intent expression - Papers</td><td><ul><li>"Anticipation in Robot Motion" (2011) <a href="http://www.cc.gatech.edu/social-machines/papers/gielniak11_roman_anticipation.pdf">link</a></li><li>"Improving Robot Readability" (2011) <a href="http://www.leilatakayama.org/downloads/Takayama.Animation_HRI2011_prepress.pdf">link</a></li></ul><br><em>Further reading:</em><ul><li>"Communication of Intent in Assistive Free Flyers" (2014) <a href="http://pages.cs.wisc.edu/~bilge/pubs/2014/HRI14-Szafir.pdf">link</a></li></ul></td><td></td></tr><tr><td>15</td><td>March 7</td><td>Online intent inference and expression – Lecture</td><td>Further reading "Planning Based Prediction for Pedestrians" (2009) <a href="https://www.ri.cmu.edu/pub_files/2009/10/planning-based-prediction-pedestrians.pdf">link</a> "Goal Inference as Invese Planning" (2007) <a href="http://saxelab.mit.edu/sites/default/files/publications/qt5v06n97q.pdf">link</a> "Obsessed with Goals" (2007) <a href="https://core.ac.uk/download/pdf/6975.pdf">link</a> "Legibility and predictability of robot motion" (2013) <a href="https://www.ri.cmu.edu/pub_files/2013/3/legiilitypredictabilityIEEE.pdf">link</a></td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/Intent%202023.pdf">Intent notes</a></td></tr><tr><td>16</td><td>March 9</td><td>MPDs/POMDPs to avoid/assist with rational/imitative models – Lecture</td><td><em>Further reading:</em><ul><li>"CrossTraining" (2013) <a href="https://interactive.mit.edu/sites/default/files/documents/HRI2013_Nikol_Shah.pdf">link</a></li><li>"Other play" <a href="http://proceedings.mlr.press/v119/hu20a/hu20a.pdf">link</a></li></ul></td><td><a href="https://people.eecs.berkeley.edu/~anca/AHRI-S2023/Interaction%20as%20mdpsPomdps%20.pdf">Avoid/collab/assist notes</a></td></tr><tr><td>17</td><td>March 14</td><td>MDPs+avoid/collaborate – Papers</td><td><ul><li>"Socially Compliant Navigation via IRL" <a href="https://pdfs.semanticscholar.org/4d52/6984d773c5afe38e30771f10e6f8f38ec92f.pdf">link</a></li><li>"Predicting Human Reaching Motion" (2015) <a href="http://www.researchgate.net/profile/Jim_Mainprice/publication/272830893_Predicting_Human_Reaching_Motion_in_Collaborative_Tasks_Using_Inverse_Optimal_Control_and_Iterative_Re-planning/links/553fa0450cf2736761c04003.pdf">link</a></li></ul></td><td></td></tr><tr><td>18</td><td>March 16</td><td>POMDPs+avoid/collaborate - Papers</td><td><ul><li>"Shared Autonomy via Hidsight Optimization" (2015) <a href="https://arxiv.org/abs/1503.07619">link</a></li><li>"Intention-Aware Motion Planning" (2013) <a href="https://dspace.mit.edu/bitstream/handle/1721.1/112770/Rus_intentionawaremotionplanning.pdf">link</a></li></ul></td><td></td></tr><tr><td>19</td><td>March 21</td><td>RL to collaborate - Papers</td><td><ul><li>Human-aware RL <a href="https://arxiv.org/abs/1910.05789">link</a></li><li>Off belief learning <a href="https://arxiv.org/pdf/2103.04000.pdf">link</a></li></ul></td><td></td></tr><tr><td colspan="5">Part 4: Experiment design</td></tr><tr><td>20</td><td>March 23</td><td>Experiment Design 1 – Lecture</td><td></td><td></td></tr><tr><td>21</td><td>March 28</td><td>Spring Break</td><td></td><td></td></tr><tr><td>22</td><td>March 30</td><td>Spring Break</td><td></td><td></td></tr><tr><td>23</td><td>April 4</td><td>Experiment Design 2 – Lecture</td><td><ul><li>"Evaluating Fluency in Human-Robot Collaboration" (2013) <a href="http://people.csail.mit.edu/boerkoel/hrc2013/hrc2013hoffman">link</a></li></ul></td><td></td></tr><tr><td colspan="5">Part 5: The frontier of AHRI</td></tr><tr><td>24</td><td>April 6</td><td>HRI as a Game – Lecture</td><td></td><td></td></tr><tr><td>25</td><td>April 11</td><td>HRI as a Game – Papers</td><td><ul><li>Cooperative IRL (2016) <a href="https://arxiv.org/abs/1606.03137">link</a></li><li>Influence-aware planning (2016) <a href="http://roboticsproceedings.org/rss12/p29.html">link</a></li></ul><br><em>Further reading:</em><ul><li>ILQgame <a href="https://arxiv.org/abs/1909.04694">link</a></li></ul></td><td></td></tr><tr><td>26</td><td>April 13</td><td>Human models beyond imitation and noisy-rationality – Lecture</td><td><em>Further reading:</em><ul><li>Human biases and reward inference <a href="https://arxiv.org/pdf/2111.06956.pdf">link</a></li><li>The Boltzmann policy distribution <a href="https://openreview.net/forum?id=_l_QjPGN5ye">link</a></li></ul></td><td></td></tr><tr><td>27</td><td>April 18</td><td>Human models – Papers</td><td><ul><li>How children come to understand false beliefs (2018) <a href="https://www.pnas.org/doi/10.1073/pnas.1804761115">link</a></li><li>Where do you think you’re going (2018) <a href="https://arxiv.org/abs/1805.08010">link</a></li></ul><br><em>Further reading:</em><ul><li>Assisted Perception (2020) <a href="https://arxiv.org/abs/2008.02840">link</a></li></ul></td><td></td></tr><tr><td>28</td><td>April 20</td><td>Human models – Papers 2</td><td><ul><li>Modeling human-like gameplay (2022) <a href="https://proceedings.mlr.press/v162/jacob22a/jacob22a.pdf">link</a></li><li>Evolving negotiation agents (2022) <a href="https://arxiv.org/abs/2106.07728">link</a></li></ul></td><td></td></tr><tr><td>29</td><td>April 25</td><td>Presentations 1</td><td></td><td></td></tr><tr><td>30</td><td>April 27</td><td>Presentations 2</td><td></td><td></td></tr></tbody></table>

For more readings, check out a few other class websites (this is by no means a comprehensive list):

- [Cooperative Machines (MIT)](http://ocw.mit.edu/courses/media-arts-and-sciences/mas-965-special-topics-in-media-technology-cooperative-machines-fall-2003/lecture-notes/)
- [Human-Robot Interaction (GaTech)](http://www.cc.gatech.edu/~athomaz/classes/CS8803-HRI/Home.html)
- [Human-Robot Interaction (UW)](https://sites.google.com/site/cse599k1/calendar)
- [Manipulation Algorithms (CMU)](https://personalrobotics.ri.cmu.edu/courses/16843/)