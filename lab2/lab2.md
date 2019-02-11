DSCI 562 Lab Assignment 2: Regression Beyond the Mean
================

Global Rubrics (16%)
--------------------

These rubrics apply to your entire submission.

### Tidy Submission

rubric={mechanics:4}

To get these mechanics marks, you are expected to:

-   Complete the assignment using R.
-   Submit the assignment by filling in this worksheet with your answers embedded
-   Be sure to follow the [general lab instructions](https://ubc-mds.github.io/resources_pages/general_lab_instructions/).
-   Do not include any code that installs packages (this is not good practice anyway) -- note that this is different from loading packages, which is good!

### Writing

rubric={writing:4}

To get the marks for this writing component, you should:

-   Use proper English, spelling, and grammar throughout your submission.
-   Be succinct. This means being specific about what you want to communicate, without being superfluous.

### Vis

rubric={viz:4}

These marks apply to the collective visuals you make in this assignment.

### Code Quality

rubric={quality:4}

These marks apply to the collective code you write in this assignment.

Exercise 1: Local Prediction Beyond the Mean (44%)
--------------------------------------------------

For this exercise, we'll use the river discharge (aka "flow", units m^3/s) data of the Bow River at Banff, Alberta. We've included it in the `data` folder of this lab, and is made available through the Water Survey of Canada. Your task is to investigate the river flow throughout the year -- so, the response is river flow, and the (single) predictor is "day of the year" (also called "julian day"). Hint: use `lubridate::yday()` to get the day of year from a date, and `lubridate::yday()` to get the year.

You'll be using non-parametric regression (i.e., no assumptions on the model function) to generate a variety of predictions (not just the mean). Unless specified otherwise, we'll leave it up to you to decide exactly which local method to use, but here are two options:

**Option 1: manual local method**

Obtain your estimate at a particular day of year `d` as follows:

1.  Subset the data to include all data occuring on day `d`.
2.  Use a univariate estimator to estimate the quantity of interest using the response values in the subset.

If you want to make this more advanced (not required), you could:

-   Expand your subset to include all data occuring within a set number of days of `d`.
-   Use a kernel function to downweigh data that occur further away.
-   Use local polynomials.

**Option 2: from R packages**

There might be functions available in some R packages that will do non-parametric regression for you.

-   You've seen `loess()` for mean regression.
-   One option for non-parametric quantile regression is `quantreg::rqss()` (fits a smoothing spline). To use it, when specifying the formula, you need to wrap each predictor in the `qss()` function, specifying the tuning parameter `lambda` also within the `qss()` function.
-   I don't know of any functions to fit a model of predictive distributions. Perhaps the `ensembleBMA` package might. I recommend just using a manual method for this one.

### 1.1 Mean vs Median regression

rubric={accuracy:7, reasoning:7}

Using a local regression method, estimate two model functions: one for the median, and another for the mean flow for each day of the year. Plot these two model functions overtop of the data.

What are the error measurements of each model function? Just use the training data. Does it make sense to compare these two error measurements to see which one fits better? Why or why not?

### 1.2.0 (Optional) cross validation

rubric={accuracy:3}

When doing Exercise 1.2 below, use cross-validation to:

1.  optimize your tuning parameters (instead of by-eye), and
2.  to get an estimate of generalization error (instead of using training error).

Please indicate whether you've tried this or not.

### 1.2 Upper Quantile Regression

rubric={accuracy:5, reasoning:5}

Fit a model function that represents the 0.75-quantile of river flow given the day of the year. Use some pre-programmed R function such as `quantreg::rqss()` to fit a non-parametric method to plot a 0.75-quantile model function overtop of the data. Fit the model function by-eye (so that the model function is neither overfit nor underfit). Note, outside of this lab assignment, if you want to plot quantile model functions, you can use `ggplot2::geom_quantile()`, with `method="rq"` for linear, or `method="rqss"` for non-parametric.

What is the estimated 0.75-quantile flow on day 160? Interpret this quantity. Why might the 0.75-quantile be desirable as a prediction instead of the mean or median?

What is the error of this model? To save time, it's fine to calculate this on the training data (although, of course, it would be more ideal to get an estimate of generalization error).

### 1.3 Prediction Intervals (PI)

rubric={accuracy:5, reasoning:5}

Use a non-parametric regression method to provide a 90% prediction interval for flow on each day of the year. Do not make any distributional assumptions. Plot a 90% confidence band overtop of the data.

What is your prediction interval for flow on day 160? Provide an interpretation for the lower limit of the PI; then for the upper limit.

### 1.4 Probabilistic Forecasts

rubric={accuracy:5, reasoning:5}

Use a local regression method to provide two probabilistic forecasts: one on day 160 ("peak flood season"), and another on day 300 ("low flood season"). Report your answer as a plot of two density estimates of both distributions.

Now, imagine you're interested in setting up a campground along the Bow River at this gauge location (the town of Banff is currently located there, but imagine it isn't). You've also learned that flows above 200 m^3/s typically result in a flood, with severity growing with larger flows. If you were to set up camp there, what does your predictive distribution tell you about the flooding situation you'd have to deal with year-in and year-out? Would you say setting up camp is a risky move?

### 1.5 (Optional) Loess Probabilistic Forecast

rubric={reasoning:3}

Compute a probabilistic forecast for flow on day 160 using data outside of day 160. Use loess, using a gaussian or tricubic kernel weight function and local polynomials with degree either 1 or 2. Feel free to estimate either the cdf, quantile function, or density, but either way, plot your result AND your distribution from 1.4.

Exercise 2: Adding a Distributional Assumption (20%)
----------------------------------------------------

You might have noticed that the distribution of flow across day of the year is right-skewed. It turns out that the distribution of *log(flow)* across the year is far more symmetric -- in fact, the distributions seem to resemble Gaussian distributions.

For this exercise, you'll estimate mean and variance in 2.1, and then in 2.2, you'll assume that log(flow) is Gaussian on any given day of the year, and will extract some probabilistic quantities using the assumption.

Note that you are still not making any assumptions on any model function!

### 2.1 Variance Regression

rubric={accuracy:10}

First, obtain mean estimates of log(flow) for each day of the year using `loess()` (again, fit this by eye -- you'll need a plot for this, which you'll report at the end of this exercise (2.1)). Then, obtain variance estimates by fitting `loess()` again, this time with the squared residuals as the response (again, fit this by eye). Remember, we can do this because the variance is also a mean (of the squared residuals)!

To show that you've estimated the mean and variance, display these on a plot of the data (remember, log scale) with a model function representing the mean, and 90% prediction bands based on the Gaussian distribution.

### 2.2 Deriving quantities from the fitted distributions

rubric={accuracy:10}

Now, assume that log(fare) on any given day of the year follows a Gaussian distribution. Equivalently, this means that fare follows a *log normal* distribution, denoted in R as `*lnorm()` (such as `dlnorm()`). Provide estimates of the following quantities of flow (*not* log(flow)!). Note that you should not have to fit any more models to answer this question.

-   Median on day 160.
-   The interquartile range (IQR) on day 160.
-   The probabilistic forecasts for days 160 and 300 (as plots, like you did in 1.4).

Exercise 3: Robust Regression (20%)
-----------------------------------

In this exercise, we will work with the crime dataset found in the book "Statistical Methods for Social Sciences, Third Edition by Alan Agresti and Barbara Finlay (Prentice Hall, 1997)". It has been made available online as a `.dta` file at <https://stats.idre.ucla.edu/stat/data/crime.dta>. Let's read it in:

``` r
crime <- read.dta("https://stats.idre.ucla.edu/stat/data/crime.dta")
```

We'll investigate how the number of murders (per million, column `murder`) influences the number of violent crimes (per million, column `crime`). More documentation on the data can be found on [this UCLA webpage](https://stats.idre.ucla.edu/r/dae/robust-regression/).

### 3.1 Plot

rubric={accuracy:3, reasoning:3}

Plot the data. Visually, are there any noticeable outliers in the predictor space, and/or outliers in the response? What makes this an outlier / these outliers?

### 3.2 Linear Regression

rubric={accuracy:3, reasoning:3}

Plot the Cook's distances for each observation that results from fitting a linear regression with `lm()`. You can do this with the `plot()` function, specifying `which=4`. Do the Cook's distances agree with your speculations in 2.1?

### 3.3 Robust Regression

rubric={accuracy:6}

Fit a robust linear regression using the `lmRob()` function from the `robust` package (which sits on top of the `robustbase` package, which has a similar function called `lmrob()`). Plot this on top of the data, along with the model functions for the standard linear regression, and linear median regression (you can use `ggplot2`'s built-in functions for these, if you'd like).
