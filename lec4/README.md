# Lecture 4

## Agenda

- Re-address the table from last time, which leads into the following:
- Discussion: 
    - Quantile regression as an optimization problem. 
    - Proper Scoring Rules (error measurements)
- [Worksheet Part 2](https://ubc-mds.github.io/DSCI_562/lec4/worksheet.nb.html); ([raw .rmd version](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec4/worksheet.Rmd)) -- finish QR
- Discussion:
    - The case for probabilistic forecasting.
- Worksheet continuation -- Probabilistic Forecasting
- Discussion:
    - The two types of outliers.
    - Robust regression by modifying the loss function.
    - The idea behind more advanced robust regression methods.

## Learning Objectives

- Match a model function to either a mean or quantile, given the loss/objective function.
- Identify a proper scoring rule (error measurement) for the mean and quantiles (no need to memorize the formula for quantiles, though).
- Explain what probabilistic forecasting is, and interpret a predictive distribution.
- Obtain probabilistic forecasts from GLM's.
- Obtain probabilistic forecasts using local regression methods (kNN and moving-windows).
- Identify whether a loss function is more robust than squared error / least squares.

## Concepts

First, let's talk about that table from last time, but in the univariate setting.

**How to estimate probabilistic quantities in the univariate setting (mean, quantiles, variance, etc)**

| Distributional Assumption? | Estimation Method |
|---|---|
| No  | "sample versions": ybar, s^2, `quantile()`, ...    |
| Yes | Use MLE to estimate distribution; extract desired quantity. |

Here's a more accurate version of the regression version of the table.

**How to estimate a model function in the univariate setting (specifically mean and quantile model functions)**

| Model function assumption? | Distributional Assumption? | Estimation Method |
|----|----|----|
| No  | No  | Use "sample versions" with machine learning techniques (kNN, loess, random forests, ...) |
| Yes | No  | Minimize "loss function version" of "sample versions": least squares, least "rho" |
| Yes | Yes | MLE (example: GLM, including linear regression) |
| No  | Yes | Use MLE with machine learning techniques (kNN, loess, random forests, ...) |

List of concepts from today:

- If there are no distributional assumption, then: 
	- the model function that minimizes the sum of squared errors (least squares) is an estimate of the conditional mean;
	- the model function that minimizes the sum of absolute errors (least absolute errors) is an estimate of the conditional median;
	- the model function that minimizes the sum of the "rho function" is an estimate of a specific conditional quantile.
- If there is a distributional assumption, then we minimize the negative log likelihood to estimate the model function.
- To evaluate error associated with a model function, we (1) calculate the residuals (actual response minus estimate), (2) calculate a "score" or error for each observation, then (3) calculate the average error. The "score"/error should correspond to the loss function:
	- squared error for mean model functions;
	- absolute error for median model functions;
	- rho function for a generic quantile.
- Using the entire conditional distribution of Y\|X as a prediction carries the entire picture of uncertainty about the actual outcome, as opposed to a single number like the mean or a quantile.
- We can obtain a probabilistic forecast (a "predictive distribution"): 
	- from a GLM by plugging in the estimated distribution parameter(s) (just the mean in the case of Bernoulli or Poisson) to get the specific distribution, and plotting the distribution.
	- using a local method by plotting an estimate of the univariate distribution that results from the relevant subsample of `y` occuring near a particular `x` value. 
- A loss function is more robust than squared error (least squares) if the error function does not grow as fast as a quadratic curve. The Huber loss function is one such example, which is the squared error up until some point `+/-c`, after which the loss function grows linearly.


## Readings

- [032-probabilistic_forecasting](./032-probabilistic_forecasting.html)