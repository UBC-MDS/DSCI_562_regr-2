# DSCI 562 Lecture 1

## Agenda

1. Syllabus:
	- Assessments
	- Course topics
2. ["Quiz"](./quiz.html) for review and orientation
3. [Case Study](./case_study.nb.html)
4. End of class: choose block rep

## Learning Objectives

- Explain the value of making parametric assumptions in regression. 
- Identify the assumptions that are made in GLM's, and why we assume them.
- Review of local regression: how they are fit, and what we obtain after fitting.
- Interpret parameters in a log and logit link function model.
- Fit GLM's in R.

## Readings

- Tasks that motivate Regression
- The Restricted Range Problem: Transformations
- The Types and Value of Parametric Assumptions

## Concepts

Here are the concepts of today's lecture, distilled into a list.

- Two main overarching objectives that regression can address are
    1. __predicting__ values of a response, sometimes also describing uncertainty of the prediction; and 
    2. __interpreting__ the relationship between predictors and response.
- A model can be _parametric_ (i.e., containing parameters) in roughly two ways: 
    1. When defining the __model function__ (or other related functions, such as the conditional variance). Computer scientists tend to mean this when they say "parametric".
    2. When defining __probability distributions__. Statisticians tend to mean to this when they say "parametric".
- We add parameters to our model for the following reasons:
    1. to give us a quantity that we can interpret (this usually corresponds to parameters in the model function); and/or
    2. to reduce error (this usually corresponds to parametes in the probability distributions).
- A parametric form for model functions that's different from linear is assumed in these two common cases:
    1. When there's a scientifically motivated functional form (such as the [Michaelis-Menten equation](https://ncss-wpengine.netdna-ssl.com/wp-content/themes/ncss/pdf/Procedures/NCSS/Michaelis-Menten_Equation.pdf), Beverton-Holt model, Lotka-Volterra model, etc.); or
    2. When it doesn't make sense for the range of the model function to take on any number.
- We can "use" the model function parameters by minimizing the squared errors (in the case of mean regression).
- A parametric form for the conditional distributions (of the response given the predictors) is assumed most commonly in the situation where making the assumption results in a dramatic decrease in estimator variance. Usually, when the conditional distributions are quite different from Gaussian. This is the idea behind _Generalized Linear Models_ (GLM).
- We can "use" the probabilistic parameter assumptions by maximizing the likelihood.
- In R, use the `glm()` function to fit a GLM. Specify family with the `family` argument. When predicting, the `predict()` generic function requires `type="response"`, and `broom::augment()` requires `type.predict="response"`.
