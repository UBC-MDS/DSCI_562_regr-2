# Lecture 5

## Agenda

Announcement: Sunny will be delivering a guest lecture on Wednesday.

We will work through the worksheet ([html](https://ubc-mds.github.io/DSCI_562/lec5/worksheet.nb.html); [.Rmd](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec5/worksheet.Rmd)), which involves:

1. Worksheet intro: the "monkey wrench" of survival data.
2. Lab Assignment 3 overview
3. Discussion: Estimation from an empirical survival function
    - In what ways can we define a distribution?
    - Non-censored data estimation
    - Censored data estimation
4. Worksheet practice: univariate estimation
5. Discussion: Proportional Odds regression model
6. Worksheet practice: regression

__Warning__: Today we will be talking about _proportional hazards_. Wednesday, Sunny will be talking about _proportional odds_. I will probably accidentally say "odds" today when I really mean "hazards", but I will do my best.

## Learning objectives

- Identify whether data is censored.
- Identify a consequence of subsetting to uncensored data OR ignoring the censored property, instead of using survival analysis methods (such as the Kaplan-Meier estimate).
- Obtain univariate estimates of mean, median, and survival function in R, both using the Kaplan-Meier technique and a distributional assumption.
- Identify when the Kaplan-Meier survival function estimate cannot produce a mean and high quantile estimates, and one technique of addressing this situation.
- Interpret the regression coefficients of a proportional hazards model, and identify the model assumptions.
- Obtain predictions from a proportional hazards model.


## Concept list

TBD

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
