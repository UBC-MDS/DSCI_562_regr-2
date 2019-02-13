# DSCI 562: Regression II

Approaches when faced with special conditions in regression, and consequences of ignoring these conditions.

Check out the [About](about.md) page for a description of the course.


## Course Learning Objectives

By the end of the course, students are expected to:

- Describe the risk and value of making parametric assumptions in regression.
- Fit model functions that represent probabilistic quantities besides the mean.
- Identify situations where standard linear regression is sub-optimal, and apply alternative regression methods that better address the situation.
- Link the bias-variance tradeoff to the fundamental tradeoff of machine learning.


## Assessments

| Deliverable | Weight   | Deadline | Submit to... |
|------------|----------|----------|--------------|
| [lab assignment 1](./lab1/lab1.md) | 15% | February 9, 2019 at 18:00 | github.ubc.ca |
| [lab assignment 2](./lab2/lab2.md) | 15% | February 16, 2019 at 18:00 | github.ubc.ca |
| quiz 1           | 20% | February 25, 2019 from 14:00-14:32 | canvas (write in your lab room) |
| lab assignment 3 | 15% | **March 3, 2019 at 15:00** | github.ubc.ca |
| lab assignment 4 | 15% | March 9, 2019 at 18:00 | github.ubc.ca |
| quiz 2           | 20% | March 12, 2019 from 11:00-11:32 | canvas (write in DMP 301)       |

## Lecture Schedule

Note: Topics covered are conditional on time available.

| Lecture| Date | Topic |
|-------|-------------|-------------|
| [1](./lec1) | 2019-02-04 | Model functions in regression |
| [2](./lec2) | 2019-02-06 | Regression on restricted scales: GLM and transformations |
| [3](./lec3) | 2019-02-11 | Regression beyond the mean Part I: variance, quantiles |
| [4](./lec4) | 2019-02-13 | Regression beyond the mean Part II: probabilistic forecasts, robust regression |
| 5 | 2019-02-25 | Regression on censored response data: survival analysis   |
| 6 | 2019-02-27 | Regression on ordinal response data: proportional odds model |
| 7 | 2019-03-04 | Regression when data are missing |
| 8 | 2019-03-06 | Regression in many groups: mixed effects models |

If time remains, here are some topics we could cover:

- Regression in between linear and non-parametric: Generalized Additive Models
- Copula Regression
- Non-identifiability
- Heavy-tailed distributions

## Reference Material

**List under construction**

- Julian J. Faraway. Extending the Linear Model with R: Generalized Linear, Mixed Effects and Nonparametric Regression Models, Second Edition (Chapman & Hall/CRC Texts in Statistical Science), 2016.
- For survival analysis: [David G. Kleinbaum, Mitchel Klein (2012) Survival analysis: a self-learning text, 3rd edition](http://webcat2.library.ubc.ca/vwebv/holdingsInfo?bibId=5827037)
	- Non-technical explanation of survival analysis, with a nice succinct summary along the side of each page.
	- Recommends epidemiological background, but we will avoid those parts.  
