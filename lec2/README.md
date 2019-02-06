# Lecture 2

Topic: Regression on restricted scales: GLM and transformations

## Announcements

- Updated links, learning objectives, and concepts for lecture 1 to better reflect what actually happened. 

## Agenda

- Review / Assignment 1 hints
	- What is a null model?
	- Making a binary response numeric.
	- loess on male/female.
	- When is a model function parametric?
- [Case Study, Part 2](./case_study.nb.html)


## Learning Objectives

- Interpret the mean of a binary response as a probability after transforming the data into 0's and 1's.
- Define a link function, and identify its usefulness when the range of the mean response is limited.
- Interpret coefficient parameters when the conditional mean response is transformed by a log and logit link function.
- Identify whether a link function solves the restricted range problem (which is when the mean of Y is restricted).
- Select appropriate distributional assumptions for the conditional response, particularly in the case of a binary response and a count response.
- Explain the risk and value of making parametric assumptions on the model function.
- Explain the risk and value of making parametric assumptions on the conditional distributions. 
- Fit GLM's in R, and extract mean estimates.

## Readings

- [Fitting GLM's in R](090-glm_in_r.md)

### Concepts

- The model function is a "valid" estimate of the mean conditional response when it minimizes the sum of squared errors (i.e., when it's the least squares estimator). (We'll elaborate in Week 2).
	- If a parameteric model function is assumed, then this result is conditional on the assumption being true.
	- Many resources will tell you that we also need the conditional response to be Gaussian. This is not true. It's more accurate to say that, if the conditional response is not Gaussian, then we might be able to estimate the model function better than least squares can, by using MLE (this is _if_ we can identify a decent distribution that's alternative to Gaussian!)
- A model can be _parametric_ (i.e., containing parameters) in roughly two ways: 
    1. When defining the __model function__ (or other related functions, such as the conditional variance). Computer scientists tend to mean this when they say "parametric".
    2. When defining __probability distributions__. Statisticians tend to mean to this when they say "parametric".
- We add parameters to our model for the following reasons:
    1. to give us a quantity that we can interpret (this usually corresponds to parameters in the model function); and/or
    2. to reduce error (this usually corresponds to parametes in the probability distributions).
- A parametric form for model functions that's different from linear is assumed in these two common cases:
    1. When there's a scientifically motivated functional form (such as the [Michaelis-Menten equation](https://ncss-wpengine.netdna-ssl.com/wp-content/themes/ncss/pdf/Procedures/NCSS/Michaelis-Menten_Equation.pdf), Beverton-Holt model, Lotka-Volterra model, etc.); or
    2. When it doesn't make sense for the range of the model function to take on any number.
- When the possible range of the mean response is restricted (for example, between 0 and 1 for a binary variable), we can transform the conditional mean using a link function so that its transformed range is unrestricted (i.e., can be any real number). This transformed mean can be modelled as a linear function of the predictors, like we do in linear regression. We try to choose link functions so that the coefficient parameters are still interpretable.
	- The "linear function of the predictors" is called the _linear predictor_.
	- Equivalently, the conditional mean can be modelled as the inverse link function applied to the linear predictor.
	- Many resources will talk about link functions as being a solution to non-Gaussian data. This is not true. As mentioned before, 
- Common examples of link functions: log link for means that can only be positive; logit link for means that are probabilities.
	- Interpretation of a coefficient with log link: the response is expected to increase by exp(coefficient) times when the corresponding predictor increases by one unit (i.e., the effect is multiplicative).
	- Interpretation of a coefficient with logit link: the odds of "success" increases exp(coefficient) times when the corresponding predictor increases by one unit (i.e., the effect is multiplicative). The "odds" is defined as 
- A parametric form for the conditional distributions (of the response given the predictors) is assumed most commonly in the situation where making the assumption results in a dramatic decrease in estimator variance. Usually, when the conditional distributions are quite different from Gaussian. This is the idea behind _Generalized Linear Models_ (GLM).
- We can make use of the probabilistic parameter assumptions by maximizing the likelihood.
- In R, use the `glm()` function to fit a GLM. Specify family with the `family` argument. When predicting, the `predict()` generic function requires `type="response"`, and `broom::augment()` requires `type.predict="response"`.