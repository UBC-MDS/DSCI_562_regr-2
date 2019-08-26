# Lecture 1 Landing Page

Topic: Model functions in regression

## Agenda

1. Syllabus:
	- Assessments
	- Course topics
2. ["Quiz"](./quiz.html) for review and orientation
3. [Case Study, Part 1](./case_study.nb.html)
4. End of class: choose block rep

## Learning Objectives

- Define a model function.
- Identify the two main objectives that regression can address.
- Identify the value that linear regression holds, even if its fit is sub-par to some other machine learning method.
- Demonstrate how to fit a regression model function using local regression methods: kNN and loess, including kernel functions and local polynomials.
- Identify the shape of a model function resulting from local regression methods, specifically as a function that is not interpretable.
- Recall what makes an estimator "valid".

## Readings

- [About the course](../about.md)
- [Tasks that motivate Regression](00-tasks.md)
- [The Restricted Range Problem: Transformations](089-transformations.md)
- [The Types and Value of Parametric Assumptions](088-parametric.md)

## Concepts

Here are the concepts of today's lecture, distilled into a list.

- Two main overarching objectives that regression can address are
    1. __predicting/estimating__ values of a response, sometimes also describing uncertainty of the prediction/estimate; and 
    2. __interpreting__ the relationship between predictors and response.
- A model function is a function of the predictors, that evaluates to some probabilistic quantity (that we choose) of the conditional response.
- In linear regression (and most often when people talk about regression), the model function is the mean of the response given values of the predictors. This is also called the "conditional response" for short. 
- Regression can be defined as fitting a model function to the data when the response variable is numeric. (When the response is categorical, it's called classification).
- Even if linear regression does not result in the best fitting model function, it's still valuable because we are able to interpret the parameters to gain insight into the relationship between predictors and response.
- The slope parameter in linear regression is the average slope (approximately).
- An estimator is "valid" if it converges to the actual probabilistic quantity as the sample size increases.
