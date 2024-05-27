# Lecture Learning Objectives

## Lecture 1 - Generalized Linear Models: Link Functions and Count Regression
- Explain the Data Science workflow in Regression Analysis.
- Recall the basics of Ordinary Least-squares (OLS) regression.
- Identify cases where OLS regression is not suitable.
- Distinguish what makes a regression model "*linear*."
- Explain the concept of generalized linear models (GLMs).
- Explore the concept of the link function.
- Outline the modelling framework of count regression.
- Fit and interpret count regression.
- Use count regression for prediction.
- Explain and test overdispersion on count-type data.

## Lecture 2 - Generalized Linear Models: Model Selection and Multinomial Logistic Regression
- Perform likelihood-based model selection through analysis of deviance, Akaike Information Criterion, and Bayesian Information Criterion.
- Extend the link function concept of the generalized linear models (GLMs) to other discrete categorical responses.
- Outline the modelling framework of the Multinomial Logistic regression.
- Fit and interpret the Multinomial Logistic regression.
- Use the Multinomial Logistic regression for prediction.

## Lecture 3 - Generalized Linear Models: Ordinal Logistic Regression
- Outline the modelling framework of the Ordinal Logistic regression.
- Explain the concept of proportional odds.
- Fit and interpret Ordinal Logistic regression.
- Use the Ordinal Logistic regression for prediction.

## Lecture 4 - Linear Mixed-Effects Models
- Identify the model assumptions in a linear Mixed-Effects model.
- Associate a term (or combination of terms) in a Mixed-Effects model with the following quantities:
    * Fixed effect estimates.
    * Variances of the random effects.
    * Regression coefficients for each group and population.
    * Predictions on existing groups and a new group.  
- Fit a linear Mixed-Effects model in `R`, and extract estimates of the above quantities.
- Identify the consequences of fitting a fixed-effects linear regression model when there are groups, whether a slope parameter is pooled or fit separately per group.
- Explain the difference between the distributional assumption on the random effects and the fixed effects estimates' sampling distribution.

## Lecture 5 - Survival Analysis
- Identify when data is censored.
- Understand the consequence of subsetting to uncensored data or ignoring the censored property instead of using Survival Analysis methods.
- Obtain univariate estimates for the mean, median, and survival function in `R` with the Kaplan-Meier technique.
- Identify when the Kaplan-Meier survival function estimate cannot produce mean and high quantile estimates.
- Interpret the regression coefficients of a Cox Proportional Hazards model, and identify the model assumptions.
- Obtain predictions from a Cox Proportional Hazards model.

## Lecture 6 - Local Regression
- Define the concept of local regression.
- Model and perform piecewise constant, linear, and continuous linear local regressions.
- Extend the concept of $k$-NN classification to a regression framework.
- Define and apply locally weighted scatterplot smoother regression.

## Lecture 7 - Quantile Regression
- Review what a quantile is.
- Compare the error functions of Ordinary Least-Squares (OLS) regression versus Quantile regression.
- Recognize the impacts of parametric and distributional assumptions in Quantile regression.
- Perform non-parametric Quantile regression.
- Perform parametric Quantile regression.

## Lecture 8 - Missing Data
- Identify and explain the three common types of missing data mechanisms.
- Identify a potential consequence of removing missing data on downstream analyses.
- Identify a potential consequence of a mean imputation method on downstream analyses.
- Identify the four steps involved with a multiple imputation method for handling missing data.
- Use the `mice` package in `R` to fit multiple imputed models.