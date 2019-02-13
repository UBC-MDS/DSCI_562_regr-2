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
- Identify a proper scoring rule (error measurement) for the mean and quantiles.
- Explain what probabilistic forecasting is, and interpret a predictive distribution.
- Obtain probabilistic forecasts from GLM's.
- Obtain probabilistic forecasts using local regression methods (kNN and moving-windows).
- Obtain an empirical cdf estimate from a univariate sample.
- Identify what an outlier is (and that it's a nebulous concept).
- Identify whether a loss function is more robust than least squares.

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

TBD

## Readings

- [032-probabilistic_forecasting](./032-probabilistic_forecasting.html)