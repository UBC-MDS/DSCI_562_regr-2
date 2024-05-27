# Welcome to DSCI 562: Regression II

This course focuses on exploring regression techniques beyond Ordinary Least-squares (OLS). Some specific inquiries are the following:

- What if the response is still continuous but non-negative, or our observations are not independent anymore? 
- Maybe the response is binary, a count, or categorical.
- Moreover, what if we have censored data? 
- In many other cases, we might be interested in modelling a response different from a conditioned mean. Different Data Science-related projects will require making inference on different conditioned response quantiles. 
 
We cover useful extensions to ordinary linear regression: generalized linear models (GLMs), mixed-effects, local, survival, and quantile regression, and techniques for dealing with missing data.

## High-Level Goals

By the end of the course, students are expected to:

- Describe the risk and value of making parametric assumptions in regression.
- Fit model functions that represent probabilistic quantities besides the mean.
- Identify situations where OLS regression is sub-optimal, and apply alternative regression methods that better address the situation.

## Assessments

This is an **assignment-based course**. The following deliverables will determine your course grade:

| Assessment       | Weight  | 
| :---:            | :---:   |
| Lab Assignment 1 | 12%     |
| Lab Assignment 2 | 12%     |
| Lab Assignment 3 | 12%     |
| Lab Assignment 4 | 12%     |
| Quiz 1           | 25%     |
| Quiz 2           | 25%     |
| Lecture Attendance ([iClicker](https://student.iclicker.com/#/login))   | 2%     |

## Lecture Schedule

This course occurs during **Block 4** in the academic year. The course notes can be accessed [**here**](https://ubc-mds.github.io/DSCI_562_regr-2/README.html). Typically, students are expected to review these notes before each lecture. 

> **Note:** Answers to the iClicker questions are not included in these public materials.

| Lecture | Topic | Suggested Reading Material |
| :---:   | --- | --- |
| 1 | [**Generalized Linear Models: Link Functions and Count Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture1-glm-link-functions-and-count-regression.html) | <ul> <li> [Chapter 1 (*Review of Multiple Linear Regression*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-MLRreview.html) (*as a review*) <li> [Chapter 6 (*Logistic Regression*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-logreg.html) (*as a review*) <li> [Chapter 5 (*Generalized Linear Models: A Unifying Theory*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-glms.html#learning-objectives-4) (*short chapter*) <li> [Chapter 4 (*Poisson Regression*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-poissonreg.html) </ul> |
| 2 | [**Generalized Linear Models: Model Selection and Multinomial Logistic Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture2_glm_model_selection_multinomial.html) | <ul> <li> [Chapter 2 (Beyond Least Squares: Using Likelihoods): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-beyondmost.html#summary-of-model-building) <li> [Faraway: 5.1 (Multinomial Logit Model)](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000296029&title=Extending%20the%20Linear%20Model%20with%20R%3A%20Generalized%20Linear%2C%20Mixed%20Effects%20and%20Nonparametric%20Regression%20Models) </ul> |
| 3 | [**Generalized Linear Models: Ordinal Logistic Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture3_glm_ordinal_regression.html) | <ul> <li> [Faraway: 5.3 (Ordinal Multinomial Responses)](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000296029&title=Extending%20the%20Linear%20Model%20with%20R%3A%20Generalized%20Linear%2C%20Mixed%20Effects%20and%20Nonparametric%20Regression%20Models) </ul> |
| 4 | [**Linear Mixed-Effects Models**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture4_linear_mixed_effects_models.html) | <ul> <li> [Initial motivation (ISL): 3.3.3 Potential Problems (*2. Correlation of Error Terms*)](https://www.statlearning.com) <li> [Chapter 8 (*Introduction to Multilevel Models*): BMLR (from 8.1 to 8.8)](https://bookdown.org/roback/bookdown-BeyondMLR/ch-multilevelintro.html) </ul>|
| 5 | [**Survival Analysis**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture5_survival_analysis.html) |See Kleinbaum and Klein (2005) in [Reference Material](#reference-material) |
| 6 | [**Local Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture6_local_regression.html) | <ul><li> [ISL](https://www.statlearning.com) 7.2 Step Functions <li>[ISL](https://www.statlearning.com) 7.6 Local Regression </ul>|
| 7 | [**Quantile Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture7_quantile_regression.html) | <ul><li>[Fahrmeir (2013)](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000904267&title=Regression%20Models%2C%20Methods%20and%20Applications) 10. Quantile Regression (except 10.2.2 Bayesian Quantile Regression) </ul>|
| 8 | [**Missing Data**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture8_missing_data.html) | See van Buuren, S. (2012) in [Reference Material](#reference-material) |

See the [lecture learning objectives](lecture-learning-objectives.md) for a detailed breakdown of lecture-by-lecture learning objectives.

## Reference Material

- Agresti, A (2012). [*Categorical Data Analysis*](https://onlinelibrary.wiley.com/doi/book/10.1002/0471249688), John Wiley & Sons, Incorporated. ProQuest Ebook Central.
    - This book is helpful for generalized linear models with discrete responses.
- Collett, D. (2003). [*Modelling Binary Data (2nd ed.)*](https://www.taylorfrancis.com/books/mono/10.1201/b16654/modelling-binary-data-david-collett). Chapman and Hall/CRC. https://doi.org/10.1201/b16654
- Fahrmeir, L. (2013). [*Regression Models, Methods and Applications*](https://link.springer.com/book/10.1007/978-3-642-34333-9). Springer Berlin Heidelberg.
- Faraway, Julian J. (2005). *Extending the Linear Model with `R`: Generalized Linear, Mixed Effects and Nonparametric Regression Models*, CRC Press LLC. ProQuest Ebook Central.
    - This book is great for learning how to work within the `R` environment with the models we will be working on. Its approach is essentially practical.     
- Gelman, A. and Hill, J. (2007). [*Data Analysis Using Regression and Multilevel/Hierarchical Models*](https://www.cambridge.org/highereducation/books/data-analysis-using-regression-and-multilevel-hierarchical-models/32A29531C7FD730C3A68951A17C9D983#overview). Analytical Methods for Social Research. Cambridge University Press.
    - This book is pretty useful and practical as introductory material.
- James, G., Witten, D., Hastie, T., and Tibshirani, R. (2014). [*An Introduction to Statistical Learning: with Applications in `R`*](https://www.statlearning.com). Springer Publishing Company, Incorporated.
- Kleinbaum, D. G. and Klein, M. (2005). [*Survival analysis : A Self-Learning Text*](https://link.springer.com/book/10.1007/978-1-4419-6646-9). Springer.
    - This book is a good start for Survival Analysis:
        - **Chapter 1 (Introduction):** Introduction to Survival Analysis (I), Censored Data (II), Terminology and Notation (III).
        - **Chapter 2 (Kaplan-Meier Curves):** Review (I), Example of Kaplan-Meier Curves (II), General Features of  Kaplan-Meier Curves (III), Confidence Intervals for Kaplan-Meier Curves (VII and VIII).
        - **Chapter 3 (Cox Proportional Hazards Model):** Example of Cox Proportional Hazards Model (I), Formula of Cox Proportional Hazards Model (II), Why the Cox Proportional Hazards Model is Popular (III), Estimation of the Cox Proportional Hazards Model (IV).
        - **Chapter 7 (Parametric Model):** Overview (I), Relationship Between the Probability Density Function with Hazard and Survival Functions (II), Weibull Example (IV).
- Roback, P. and  Legler, J. (2020). [*Beyond Multiple Linear Regression*](https://bookdown.org/roback/bookdown-BeyondMLR/).
- Rubin, D. B. (1987). [*Multiple Imputation for Nonresponse in Surveys*](https://onlinelibrary.wiley.com/doi/book/10.1002/9780470316696). Wiley.
- van Buuren, S. (2012). [*Flexible Imputation of Missing Data*](https://stefvanbuuren.name/fimd/):
    - **1.1 The problem of missing data.**
    - **1.2 Concepts of MCAR, MAR and MNAR.**
    - **1.3 Ad-hoc solutions.**
    - **1.4 Multiple imputation in a nutshell.**

## Recommended Course Reviews

This course is entirely taught in `R` (we will follow the [`tidyverse` style guide](https://style.tidyverse.org/index.html)) with a reasonable mathematical and statistical basis. We strongly recommend reviewing the following courses:

- [*DSCI 551: Descriptive Statistics and Probability for Data Science*](https://github.com/UBC-MDS/DSCI_551_stat-prob-dsci), for basic statistical concepts and familiarity with the mathematical notation.
- [*DSCI 552: Statistical Inference and Computation I*](https://github.com/UBC-MDS/DSCI_552_stat-inf-1), for statistical inference concepts with a frequentist approach.
- [*DSCI 561: Regression I*](https://github.com/UBC-MDS/DSCI_561_regr-1), since the topics of this course follow the same thread.
- [*DSCI 531: Data Visualization I*](https://github.com/UBC-MDS/DSCI_531_viz-1), for plotting tools using the package `ggplot2`.
    
## Dataset References 

These are the papers from which each dataset used in the lectures comes from:

- Brockmann, H.J. (1996). [Satellite Male Groups in Horseshoe Crabs, Limulus polyphemus](https://onlinelibrary.wiley.com/doi/abs/10.1111/j.1439-0310.1996.tb01099.x). *Ethology*, 102: 1-21.
- Deb, P. and Trivedi, P. (1997). [Demand for medical care by the elderly: a finite mixture approach](https://onlinelibrary.wiley.com/doi/abs/10.1002/%28SICI%291099-1255%28199705%2912%3A3%3C313%3A%3AAID-JAE440%3E3.0.CO%3B2-G). *Journal of Applied Econometrics*, 12(3), 313-336.
- Grunfeld Y. (1958). [The determinants of corporate investment](https://www.proquest.com/docview/301899386?pq-origsite=gscholar&fromopenview=true&sourcetype=Dissertations%20&%20Theses). Ph.D. thesis, Department of Economics, University of Chicago.
- Harrison, D. and Rubinfeld, D.L. (1978). [Hedonic prices and the demand for clean air](https://www.sciencedirect.com/science/article/abs/pii/0095069678900062). *Journal of Environmental Economics and Management*, 5, 81–102.
- Mangasarian, O. L., Street, W. N., and Wolberg, W. H. (1995). [Breast cancer diagnosis and prognosis via linear programming](https://www.jstor.org/stable/171686). *Operations Research*, 43(4), 570-577.
- Wolberg, W. H. and Mangasarian, O. L. (1990). [Multisurface method of pattern separation for medical diagnosis applied to breast cytology](https://www.ncbi.nlm.nih.gov/pmc/articles/PMC55130/). *Proceedings of the National Academy of Sciences of the United States of America*, 87(23), 9193–9196.
- Wood, P. (1967). [Algebraic Model of the Lactation Curve in Cattle](https://www.nature.com/articles/216164a0). *Nature*, 216, 164–165.

## Policies

See the general [MDS policies](https://ubc-mds.github.io/policies/).

## Previous Release

A 2019 release of these course's notes can be found [here](https://github.com/UBC-MDS/DSCI_562_regr-2/releases/tag/2019).

## Attribution
    
The course is built upon previous years' materials developed by previous instructors.

## License

See our [license](LICENSE.md) for further details.

© 2024 [G. Alexi Rodríguez-Arelis](https://alexrod.netlify.app), Rodolfo Lourenzutti, and Vincenzo Coia