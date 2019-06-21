# DSCI 562: Regression II

Approaches when faced with special conditions in regression, and consequences of ignoring these conditions.

Check out the [About](about.md) page for a description of the course.

__2018/2019 Instructor__: [Vincenzo Coia](https://vincenzocoia.github.io)

## Course Learning Objectives

By the end of the course, students are expected to:

- Describe the risk and value of making parametric assumptions in regression.
- Fit model functions that represent probabilistic quantities besides the mean.
- Identify situations where standard linear regression is sub-optimal, and apply alternative regression methods that better address the situation.
- Link the bias-variance tradeoff to the fundamental tradeoff of machine learning.


## Assessments

| Deliverable | Weight   | 
|------------|----------|
| [lab assignment 1](./lab1/lab1.md) | 15% | 
| [lab assignment 2](./lab2/lab2.md) | 15% | 
| quiz 1           | 20% | 
| [lab assignment 3](./lab3/lab3.md) | 15% |
| [lab assignment 4](./lab4/lab4.md) | 15% | 
| quiz 2           | 20% | 

## Lecture Schedule

Note: Topics covered are conditional on time available.

| Lecture| Date | Topic |
|-------|-------------|-------------|
| [1](./lec1) | 2019-02-04 | Model functions in regression |
| [2](./lec2) | 2019-02-06 | Regression on restricted scales: GLM and transformations |
| [3](./lec3) | 2019-02-11 | Regression beyond the mean Part I: variance, quantiles |
| [4](./lec4) | 2019-02-13 | Regression beyond the mean Part II: probabilistic forecasts, robust regression |
| [5](./lec5) | 2019-02-25 | Regression on censored response data: survival analysis   |
| [6](./lec6) | 2019-02-27 | Regression on ordinal response data: proportional odds model |
| [7](./lec7) | 2019-03-04 | Regression in many groups: mixed effects models |
| [8](./lec8) | 2019-03-06 | Regression when data are missing |

If time remains, here are some topics we could cover:

- Regression in between linear and non-parametric: Generalized Additive Models
- Copula Regression
- Non-identifiability
- Heavy-tailed distributions

## Reference Material

- Julian J. Faraway. Extending the Linear Model with R: Generalized Linear, Mixed Effects and Nonparametric Regression Models, Second Edition (Chapman & Hall/CRC Texts in Statistical Science), 2016.
- For survival analysis: [David G. Kleinbaum, Mitchel Klein (2012) Survival analysis: a self-learning text, 3rd edition](http://webcat2.library.ubc.ca/vwebv/holdingsInfo?bibId=5827037)
	- Non-technical explanation of survival analysis, with a nice succinct summary along the side of each page.
	- Recommends epidemiological background, but we will avoid those parts.  

<a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/"><img alt="Creative Commons License" style="border-width:0" src="https://i.creativecommons.org/l/by-sa/4.0/88x31.png" /></a><br />This work is licensed under a <a rel="license" href="http://creativecommons.org/licenses/by-sa/4.0/">Creative Commons Attribution-ShareAlike 4.0 International License</a>.
