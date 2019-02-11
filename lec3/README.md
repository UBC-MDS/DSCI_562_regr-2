# Lecture 3

## Agenda:

- GLM tie-up; re-orientation (below)
- [Worksheet](https://ubc-mds.github.io/DSCI_562/lec3/worksheet.nb.html);  [(Raw .Rmd version)](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec3/worksheet.Rmd) -- Variance Regression
- The case for Quantile Regression. Interpretation of mean and quantiles.
- Worksheet continuation -- until linear QR 
- Generalize quantile regression by turning it into an optimization problem. Proper Scoring Rules.
- Worksheet continuation -- finish QR
- The case for probabilistic forecasting.
- Worksheet continuation -- Probabilistic Forecasting

## GLM tie-up; re-orientation

Fitting a model function involves separate consideration of the model function and conditional distributions:

| Model function assumption? | Distributional Assumption? | Method |
|----|----|----|
| no | no |  |
| yes | no |  |
| yes | yes |  |
| no | yes |  |

Lecture 2: 

- Restricted range problem: solve via link functions.
    - E(Y) > 0: log link
    - 0 < E(Y) < 1: logit link
- Add distributional assumption to restricted range problem to add power to estimation:
    - Y a count variable? Poisson, or negative binomial are typical.
    - Y binary? Bernoulli/Binomial.
- Final model choice for [horseshoe crab](https://ubc-mds.github.io/DSCI_562/lec2/case_study.nb.html)?
	- loess error < lm error < glm error. But this is only really useful for choosing a model for the purpose of prediction.

This week:

- Model functions besides the mean.
- Extend this to robust estimators of a mean model function.


## Learning Goals

By the end of this lecture, students are expected to be able to:

- Use regression to estimate the conditional variance.
- Interpret a quantile and mean.
- Interpret a model function as either a mean or a quantile depending on the loss/objective function.
- Identify a proper scoring rule for the mean and quantiles.
- Explain when quantile regression is useful -- particularly with regards to high quantiles, low quantiles, and median. 
- Explain what probabilistic forecasting is, and interpret the corresponding predictive distributions.
- Obtain probabilistic forecasts from GLM's.
- Obtain probabilistic forecasts using local regression methods (kNN and moving-windows).
- Obtain an empirical cdf estimate from a univariate sample.

## Readings

- [032-probabilistic_forecasting](./032-probabilistic_forecasting.html)
- [033-quantile_regression](./033-quantile_regression.html)

## Concepts

TBD