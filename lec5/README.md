# Lecture 5: Survival Analysis

## Announcements

- Sunny will be delivering a guest lecture on Wednesday.

## Agenda

We will work through the worksheet ([html](https://ubc-mds.github.io/DSCI_562/lec5/worksheet.nb.html); [.Rmd](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec5/worksheet.Rmd)), which involves:

1. Worksheet intro: the "monkey wrench" of survival data.
2. Lab Assignment 3 overview
3. Discussion: Estimation from an empirical survival function
    - In what ways can we define a distribution?
    - Non-censored data estimation
    - Censored data estimation
4. Worksheet practice: univariate estimation
5. Discussion: Proportional Hazards regression model
6. Worksheet practice: regression

## Learning objectives

- Identify whether data is censored.
- Identify a consequence of subsetting to uncensored data OR ignoring the censored property, instead of using survival analysis methods (such as the Kaplan-Meier estimate).
- Obtain univariate estimates of mean, median, and survival function in R, both using the Kaplan-Meier technique and a distributional assumption.
- Identify when the Kaplan-Meier survival function estimate cannot produce a mean and high quantile estimates, and one technique of addressing this situation.
- Interpret the regression coefficients of a proportional hazards model, and identify the model assumptions.
- Obtain predictions from a proportional hazards model.


## Resources

- [Calling bullshit](https://www.youtube.com/watch?v=ITWQ5psx9Sw&list=PLPnZfvKID1Sje5jWxt-4CSZD7bUI4gSPS&index=19&t=0s) video:
    - Consequences when censoring is ignored.
- [Princeton resource](https://data.princeton.edu/wws509/notes/c7.pdf)
    - 7.1.1 (Survival function) 
    - 7.1.2 (Hazard function) 
    - 7.3.2 (Proportional hazards model) 
- [Boston U resource](http://sphweb.bumc.bu.edu/otlt/MPH-Modules/BS/BS704_Survival/BS704_Survival_print.html), section "Estimating the Survival Function" for more details on estimating the survival function.
    - Particularly, subsection "Kaplan-Meier (Product Limit) Approach".
- [`ggfortify`'s survival plotting vignette](https://cran.r-project.org/web/packages/ggfortify/vignettes/plot_surv.html)
    - Usefull extension of `ggplot2` For plotting survival-related distributions.
    - A quick read if you know about model fitting with the `survival` R package.
    - Interested in `ggfortify`? Check out its many vignettes ([link to CRAN page](https://cran.r-project.org/web/packages/ggfortify/index.html))

Other resources:

- [Cox Model Assumptions](https://www.r-bloggers.com/cox-model-assumptions/) and testing from R-bloggers
- `survminer` R package for survival-related plots ([vignette](https://cran.r-project.org/web/packages/survminer/vignettes/Informative_Survival_Plots.html)) ([cheatsheet](https://rpkgs.datanovia.com/survminer/survminer_cheatsheet.pdf))
    - Maybe you'll have better luck with this package, but I find it to be a bit restrictive because it requires you to interact with `ggplot2` through its own framework.

## Concept list

- A measurement is _censored_ if we only know that its true value lies above some point.
    - For ease of discussion, we call the random variable of interest "time until event".
    - There are other types of censoring, but they are a simple extension of this definition.
- Removing censored data will result in uncertainty in our estimates to be larger than it could be, if we were to include the censored data.
    - Removing censored data could also result in _biased_ estimates, if data have only been collected for a short duration.
- Ignoring the censorship status (i.e., taking a censored observations to be the actual observations) will likely result in a biased (overly small) estimate.
- There are many ways a distribution can be depicted. Aside from the density/pmf and cdf, there's also:
    - The _survival function_ (= 1 - cdf) at `t` evaluates to the probability that the outcome exceeds `t`.
    - The _hazard function_ (= density / survival function) at `t` can be interpreted as the instantaneous "chance" of the event occuring, given that the event has not occured up until time `t`.
- Options for estimating quantities by incorporating the partial information contained in censored observations:
    - Survival function: if no distributional assumption is made, the Kaplan-Meier method can be used to estimate the survival function.
    - Mean: can be estimated as the area under an estimate of the survival function.
    - Quantiles: can be estimated by inverting an estimate of the survival function.
    - If a distributional assumption is made, the partial likelihood can be used to fit the distribution, and any quantity can be extracted from that distribution (not necessarily through the survival function).
- The Kaplan-Meier estimate of the survival function does not always drop to zero (when the largest observation is censored), in which case estimates of some high quantiles and the mean would not exist. A common "fix" is to force the survival function to drop to zero at the largest observation.
    - The mean estimate that results is called the _restricted_ mean.
- The Cox proportional hazards model is a commonly used model that allows us to interpret how predictors influence a censored response. It models an individual's hazard function as some baseline hazard, multiplied by `exp(eta)`, where `eta` is a linear combination of predictors.
    - The coefficient `beta` on a predictor `X` (contained in `eta`) has the following interpretation: an increase in `X` by one unit is associated with an increase in hazard (at any time) by `exp(beta)` times (i.e., the effect is multiplicative).
    - This assumes that any two hazard functions on the predictor space are the same, up to some multiplicative constant.
    - The hazard is useful to model due to its flexibility and interpretability.
- We can obtain a prediction at `X=x` from a proportional hazards model by converting the estimated hazard function evaluated at `x` to a survival function, and obtaining a univariate estimate as described above. 