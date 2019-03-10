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
    - Predictions on existing groups and a new group
- Fit a linear mixed effects model in R, and extract estimates of the above quantities.
- Identify the consequences of fitting a (fixed effects) linear regression model when there are groups, whether a slope parameter is pooled or fit separately per group.
- Explain the difference between the distributional assumption on the random effects, and the sampling distribution of the fixed effects estimates.


## Resources

- [From Linear Regression to Mixed Effects Models](https://vincenzocoia.github.io/Interpreting-Regression/from-linear-regression-to-mixed-effects-models.html)
    - Covers the idea behind mixed effects models
- [Mixed Effects models in R](https://vincenzocoia.github.io/Interpreting-Regression/mixed-effects-models-in-r-tutorial.html)

## Concepts

- A linear mixed effects (LME) model is used when iid data are collected within groups. The model is a linear regression model, where some of the regression coefficients are taken to be group-specific, where each group's coefficients are assumed to come from a joint Normal distribution with some mean and a generic covariance matrix.
- The _fixed effects_ in an LME model are the regression coefficients (if fixed) and the expected value of the regression coefficients (if random).
- The _random effects_ in an LME model are the random regression coefficients minus their means / fixed effects.
- To predict on an existing group (using a mean prediction), we find that group's regression coefficients (and therefore model function) by summing the fixed effects and (if present) the random effects, then use that model function to make predictions.
- To predict on a new group (using a mean prediction), we use the fixed effects as the regression coefficients (because the random effects have mean zero), and use that model function to make predictions. 
- If each group has different (true) regression coefficients, then: 
	- fitting a (fixed effects) linear regression model with common regression coefficients across groups does not account for the dependence/correlation contained in the data (induced by the grouping), therefore the reported SE of the regression coefficients will be smaller than they should be.
	- fitting a (fixed effects) linear regression model with separate regression coefficients across groups results in SE's (of regression coefficients) that are larger than they _could_ be if we were to borrow information across groups (as mixed effects models do). This is because this is akin to fitting separate regressions on each group, which alone has far less data than the pooled dataset.
- While the random effects are _assumed_ to follow a joint Normal distribution, this is different from the sampling distribution of the estimates of the fixed effects. 
	- The former distribution explains the spread of regression coefficients, and does not change when we collect more data (we just get a better estimate of this distribution); 
	- The latter distribution explains the uncertainty in the estimates, and gets narrower as we collect more data.  