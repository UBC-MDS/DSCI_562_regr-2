# Lecture 7: Mixed Effects Models

## Announcements

- Lec 7 and 8 swapped.
	- Should make lab easier to do.
	- Should align better with DSCI 553.

## Agenda

- Discussion/recap: Proportional odds and proportional hazards compared with lm and glm's
- Baseball Case Study: Fit two lm's: pooled and separate.
- Discussion: mixed effects models
    1. Re-writing the model function based on individuals.
    2. Introduce the idea behind random effects.
- Baseball Case Study: Fit a LME model.

Worksheet: [html](https://ubc-mds.github.io/DSCI_562/lec7/worksheet.nb.html); [.Rmd](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec7/worksheet.Rmd)

## Lecture Learning Objectives

- Identify the model assumptions in a linear mixed effects model.
- Associate a term (or combination of terms) in a mixed effects model with the following quantities:
    - Fixed effect estimates
    - Variances and correlations of the random effects
    - Regression coefficients for each group, and for the population
    - Predictions on existing groups and a new group.
- Fit a linear mixed effects model in R, and extract estimates of the above quantities.
- Identify the consequences of fitting a (fixed effects) linear regression model when there are groups, whether a slope parameter is pooled or fit separately per group.
- Explain the difference between the distributional assumption on the random effects, and the sampling distribution of the fixed effects estimates.


## Concepts

TBD

## Resources

- [From Linear Regression to Mixed Effects Models](https://vincenzocoia.github.io/Interpreting-Regression/from-linear-regression-to-mixed-effects-models.html)
    - Covers the idea behind mixed effects models
- [Mixed Effects models in R](https://vincenzocoia.github.io/Interpreting-Regression/mixed-effects-models-in-r-tutorial.html)