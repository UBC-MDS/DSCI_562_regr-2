# Lecture 3

## Agenda:

- GLM tie-up; re-orientation (below)
- [Worksheet (Part 2)](https://ubc-mds.github.io/DSCI_562/lec4/worksheet.nb.html);  [(Raw .Rmd version)](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec4/worksheet.Rmd) -- Variance Regression
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

## Readings

- [033-quantile_regression](./033-quantile_regression.html)

## Concepts

TBD