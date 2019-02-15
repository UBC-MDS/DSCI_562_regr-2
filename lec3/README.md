# Lecture 3

## Agenda:

- GLM tie-up; re-orientation (below)
- [Worksheet (Part 1)](https://ubc-mds.github.io/DSCI_562/lec3/worksheet.nb.html);  [(Raw .Rmd version)](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec3/worksheet.Rmd) -- Variance Regression
- Discussion: 
    - The case for Quantile Regression. 
    - Interpretation of mean and quantiles.
- Worksheet continuation

## GLM tie-up; re-orientation

Fitting a model function involves separate consideration of the model function and conditional distributions:

**See Lecture 4 for a better version of this table**

| Model function assumption? | Distributional Assumption? | Method |
|----|----|----|
| no | no | kNN, loess, random forests, other "machine learning" techniques |
| yes | no | least squares (example: linear regression) |
| yes | yes | MLE (example: GLM, including linear regression) |
| no | yes | Machine learning techniques, with likelihood loss function (which often amounts to least squares, as usual, when estimating mean) |

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
- Explain when quantile regression is useful -- particularly with regards to high quantiles, low quantiles, and median.
- Use regression to estimate conditional quantiles (except as an optimization problem -- that's for Lecture 4).
- Use quantile regression to create prediction bands.

## Concepts

- The conditional (population) variance can be estimated by regressing squared residuals as the response. This means that we have to (1) estimate a mean model function using any regression technique, (2) obtain the residuals, then (3) regress the squared residuals against the same predictors as in step (1). 
- The tau-quantile (for tau between 0 and 1) is a number that will be exceeded (1-tau)\*100% of the time. That is, a proportion of tau outcomes will lie below the tau-quantile (on average).
	- The median is a special case of this when tau=0.5.
- The mean is (1) a measure of central tendency of a distribution, and (2) a number useful for calculating totals (for example, multiply by `n` to get an estimate of the sum of `n` outcomes).
- Quantile regression is useful for: 
	- for high-quantiles: giving us a conservative estimate of the outcome -- a number that is deliberately larger than expected. For example: a "worst-case scenario" for next month's expense / a value we can think of as having to pay "at most".
	- for low-quantiles: giving us a liberal estimate of the outcome -- a number that is deliberately smaller than expected. For example: a "best-case scenario" for next month's expense / a value we can think of as having to pay "at least".
	- for medians: giving us an outcome that you can put to a coin flip as to whether or not you'll "make the cut". For example: a coin flip would tell you whether or not you'll exceed the median salary for your new job; a coin flip would tell you whether or not you'll have to wait longer than the median wait time when sitting in the hospital. 
- You can estimate conditional quantiles:
	- from a GLM by plugging in the estimated distribution parameter(s) (just the mean in the case of Bernoulli or Poisson) to get the specific distribution, then extracting the desired quantile from the distribution.
	- using a local regression method by obtaining an estimate of the univariate quantile that results from the relevant subsample of `y` occuring near a particular `x` value.
- A 90% prediction band is the region between the 0.95- and 0.05-quantile model functions (similar calculation can be done for any level of confidence). The corresponding prediction interval for an outcome at a particular `x` can be obtained by evaluating the two quantile model functions. 

## Readings

- [033-quantile_regression](./033-quantile_regression.html)
