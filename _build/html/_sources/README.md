Welcome to DSCI 562: Regression II
============================

This course focuses on exploring regression techniques beyond Ordinary Least-squares (OLS). Some specific inquiries are the following:

- What if the response is still continuous but non-negative, or our observations are not independent anymore? 
- Maybe the response is binary, a count, or categorical.
- Moreover, what if we have censored data? 
- In many other cases, we might be interested in modelling a response different from a conditioned mean. Different Data Science-related projects will require making inference on different conditioned response quantiles. 
 
We will cover useful extensions to classical linear regression: generalized linear models (GLMs), mixed-effects, local, survival, and quantile regression, and techniques for dealing with missing data.

## High-Level Goals

By the end of the course, students are expected to:

- Describe the risk and value of making parametric assumptions in regression.
- Fit model functions that represent probabilistic quantities besides the mean.
- Identify situations where OLS regression is sub-optimal, and apply alternative regression methods that better address the situation.

## Lecture Schedule

This course occurs during **Block 4** in the 2024/25 school year. The course notes can be accessed [**here**](https://ubc-mds.github.io/DSCI_562_regr-2/README.html). Typically, you should review these notes before each lecture. 

| Lecture | Topic | Optional Readings |
| :---:   | :---: | :---: |
| 1 | [**Generalized Linear Models: Link Functions and Count Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture1-glm-link-functions-and-count-regression.html) | <ul> <li> [Chapter 1 (*Review of Multiple Linear Regression*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-MLRreview.html) (**optional, only as a review**) <li> [Chapter 6 (*Logistic Regression*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-logreg.html) (**optional, only as a review**) <li> [Chapter 5 (*Generalized Linear Models: A Unifying Theory*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-glms.html#learning-objectives-4) (**short chapter**) <li> [Chapter 4 (*Poisson Regression*): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-poissonreg.html) </ul> |
| 2 | [**Generalized Linear Models: Model Selection and Multinomial Logistic Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture2_glm_model_selection_multinomial.html) | <ul> <li> [Chapter 2 (Beyond Least Squares: Using Likelihoods): BMLR](https://bookdown.org/roback/bookdown-BeyondMLR/ch-beyondmost.html#summary-of-model-building) <li> [Faraway: 5.1 (Multinomial Logit Model)](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000296029&title=Extending%20the%20Linear%20Model%20with%20R%3A%20Generalized%20Linear%2C%20Mixed%20Effects%20and%20Nonparametric%20Regression%20Models) </ul> |
| 3 | [**Generalized Linear Models: Ordinal Logistic Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture3_glm_ordinal_regression.html) | <ul> <li> [Faraway: 5.3 (Ordinal Multinomial Responses)](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000296029&title=Extending%20the%20Linear%20Model%20with%20R%3A%20Generalized%20Linear%2C%20Mixed%20Effects%20and%20Nonparametric%20Regression%20Models) </ul> |
| 4 | [**Linear Mixed-Effects Models**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture4_linear_mixed_effects_models.html) | <ul> <li> [Initial motivation (ISL): 3.3.3 Potential Problems (*2. Correlation of Error Terms*)](https://www.statlearning.com) <li> [Chapter 8 (*Introduction to Multilevel Models*): BMLR (from 8.1 to 8.8)](https://bookdown.org/roback/bookdown-BeyondMLR/ch-multilevelintro.html) </ul>|
| 5 | [**Survival Analysis**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture5_survival_analysis.html) |See Kleinbaum and Klein (2005) in [Reference Material](#reference-material) |
| 6 | [**Local Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture6_local_regression.html) | <ul><li> [ISL](https://www.statlearning.com) 7.2 Step Functions <li>[ISL](https://www.statlearning.com) 7.6 Local Regression </ul>|
| 7 | [**Quantile Regression**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture7_quantile_regression.html) | <ul><li>[Fahrmeir (2013)](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000904267&title=Regression%20Models%2C%20Methods%20and%20Applications) 10. Quantile Regression (except 10.2.2 Bayesian Quantile Regression) </ul>|
| 8 | [**Missing Data**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/lecture8_missing_data.html) | See van Buuren, S. (2012) in [Reference Material](#reference-material) |

See the [lecture learning objectives](lecture-learning-objectives.md) for a detailed breakdown of lecture-by-lecture learning objectives.

## Regression Mind Map

[**Here**](https://ubc-mds.github.io/DSCI_562_regr-2/notes/appendix-reg-mindmap.html) is a mind map we created to summarize all regression models to be covered in this course.

## Deliverables

This is an **assignment-based course**. The following deliverables will determine your course grade:

| Assessment       | Weight  | 
| :---:            | :---:   |
| Lab Assignment 1 | 12%     |
| Lab Assignment 2 | 12%     |
| Lab Assignment 3 | 12%     |
| Lab Assignment 4 | 12%     |
| Quiz 1           | 25%     |
| Quiz 2           | 25%     |
| Lecture Attendance ([iClicker](https://student.iclicker.com/#/login))   | 2% |

## Use of LLMs

LLMs, such as ChatGPT, can be helpful tools if we use them responsibly. In this course, students are permitted to use these tools to gather more information, review concepts, or brainstorm, and students must cite these tools if they use them for assignment. Having said all this, it is **not** permitted to write any given assignment via copying and pasting AI-generated responses.

## Reference Material
- Agresti, A (2013). *Categorical Data Analysis*, John Wiley & Sons, Incorporated. ProQuest Ebook Central.
    - The e-book is available through the [UBC Library](https://ebookcentral.proquest.com/lib/ubc/detail.action?docID=1168529). You can obtain a PDF copy with your CWL account. This book is helpful for generalized linear models with discrete responses.
- Collett, D. (2003). *Modelling Binary Data (2nd ed.)*. Chapman and Hall/CRC. https://doi.org/10.1201/b16654
    - The e-book is available through the [UBC Library](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0001459465&title=Modelling%20binary%20data).
- Fahrmeir, L. (2013). *Regression Models, Methods and Aplications*. Springer Berlin Heidelberg.
    - The e-book is available through the [UBC Library](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000904267&title=Regression%20Models%2C%20Methods%20and%20Applications). You can obtain a PDF copy with your CWL account.
- Faraway, Julian J. (2005). *Extending the Linear Model with `R`: Generalized Linear, Mixed Effects and Nonparametric Regression Models*, CRC Press LLC. ProQuest Ebook Central.
    - The e-book is available through the [UBC Library](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000296029&title=Extending%20the%20Linear%20Model%20with%20R%3A%20Generalized%20Linear%2C%20Mixed%20Effects%20and%20Nonparametric%20Regression%20Models). You can obtain a PDF copy with your CWL account. This book is great for learning how to work within the `R` environment with the models we will be working on. Its approach is essentially practical.     
- Gelman, A. and Hill, J. (2007). *Data Analysis Using Regression and Multilevel/Hierarchical Models*. Analytical Methods for Social Research. Cambridge University Press.
    - The physical book is available through the [UBC Library](http://webcat2.library.ubc.ca/vwebv/search?searchArg=Data%20analysis%20using%20regression%20and%20multilevel%2Fhierarchical%20models%20%2F&searchCode=TALL&searchType=1). This book is pretty useful and practical as introductory material.
- Hastie, T., Tibshirani, R., and Friedman, J. H. (2009). *The Elements of Statistical Learning: Data Mining, Inference, and Prediction*, Springer Publising Company, Incorporated.
    - The e-book is available through the [UBC Library](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000145389&title=The%20Elements%20of%20Statistical%20Learning%3A%20Data%20Mining%2C%20Inference%2C%20and%20Prediction%2C%20Second%20Edition).
- James, G., Witten, D., Hastie, T., and Tibshirani, R. (2014). [*An Introduction to Statistical Learning: with Applications in `R`*](https://www.statlearning.com). Springer Publishing Company, Incorporated.
- Kleinbaum, D. G. and Klein, M. (2005). *Survival analysis : A Self-Learning Text*. Springer.
    - The e-book is available through the [UBC Library](https://gw2jh3xr2c.search.serialssolutions.com/?sid=sersol&SS_jc=TC0000320278&title=Survival%20analysis%20%3A%20a%20self-learning%20text). This book is a good start for Survival Analysis:
        - **Chapter 1 (Introduction):** Introduction to Survival Analysis (I), Censored Data (II), Terminology and Notation (III).
        - **Chapter 2 (Kaplan-Meier Curves):** Review (I), Example of Kaplan-Meier Curves (II), General Features of  Kaplan-Meier Curves (III), Confidence Intervals for Kaplan-Meier Curves (VII and VIII).
        - **Chapter 3 (Cox Proportional Hazards Model):** Example of Cox Proportional Hazards Model (I), Formula of Cox Proportional Hazards Model (II), Why the Cox Proportional Hazards Model is Popular (III), Estimation of the Cox Proportional Hazards Model (IV).
        - **Chapter 7 (Parametric Model):** Overview (I), Relationship Between the Probability Density Function with Hazard and Survival Functions (II), Weibull Example (IV).
- Rousseeuw, L. P. J. and Leroy A. M. (2003). *Robust Regression and Outlier Detection*. Hoboken, NJ : Wiley-Interscience.
    - The e-book is available through the [UBC Library](https://gw2jh3xr2c.search.serialssolutions.com/log?L=GW2JH3XR2C&D=ZEEST&J=TC0000239030&P=Link&PT=EZProxy&H=48e3fef958&U=https%3A%2F%2Fezproxy.library.ubc.ca%2Flogin%3Furl%3Dhttps%3A%2F%2Fonlinelibrary.wiley.com%2Fdoi%2Fbook%2F10.1002%2F0471725382). You can obtain a PDF copy with your CWL account.
- Roback, P. and  Legler, J. (2020). [*Beyond Multiple Linear Regression*](https://bookdown.org/roback/bookdown-BeyondMLR/).
- Rubin, D. B. (1987). *Multiple Imputation for Nonresponse in Surveys*. Wiley.
    - The e-book is available through the [UBC Library](https://gw2jh3xr2c.search.serialssolutions.com/log?L=GW2JH3XR2C&D=ZEEST&J=TC0000340639&P=Link&PT=EZProxy&H=6c88ebd0c3&U=https%3A%2F%2Fezproxy.library.ubc.ca%2Flogin%3Furl%3Dhttps%3A%2F%2Fonlinelibrary.wiley.com%2Fdoi%2Fbook%2F10.1002%2F9780470316696). You can obtain a PDF copy with your CWL account.
- van Buuren, S. (2012). [*Flexible Imputation of Missing Data*](https://stefvanbuuren.name/fimd/):
    - **1.1 The problem of missing data.**
    - **1.2 Concepts of MCAR, MAR and MNAR.**
    - **1.3 Ad-hoc solutions.**
    - **1.4 Multiple imputation in a nutshell.**

## Recommended Course Reviews

This course is entirely taught in `R` (we will follow the [`tidyverse` style guide](https://style.tidyverse.org/index.html)) with a reasonable mathematical and statistical basis. We strongly recommend reviewing the following courses:

- **DSCI 551: Descriptive Statistics and Probability for Data Science**, for basic statistical concepts and familiarity with the mathematical notation.
- **DSCI 552: Statistical Inference and Computation I**, for statistical inference concepts with a frequentist approach.
- **DSCI 561: Regression I**, since the topics of this course follow the same thread.
- **DSCI 531: Data Visualization I**, for plotting tools using the package `ggplot2`.
    
## Dataset References 

These are the papers from which each dataset used in the lectures comes from. If you are interested in knowing more about them, you can obtain a PDF copy of each paper with your CWL account via the UBC library:

- Brockmann, H.J. (1996). [Satellite Male Groups in Horseshoe Crabs, Limulus polyphemus](https://ubc.summon.serialssolutions.com/2.0.0/link/0/eLvHCXMwrV3JasMwEBUlpZBLl7Sl6YY_oE4sy5sgFEpICKU9NadcjFYSmtghCyRf0t-tJC_EPhRaepMHS8jSSPM0M3oGALkdx67tCYRyKV0GacCp9CBX60RCySMcYiigy2qpOq_F1ZiMLqL0v-mFYrZvvd4JXXcPEnOUZbU1z6W-fxdoh6eO-XQUvDyGCnXrbK_hxCkDDCHKgs9KH20FelDOR_pzWxXbdYhljTEanoF10e8iC6V2SbDK9Pg_H3gOTnPsar1kynYBjkTSAs1yC923wMkkNaVL8NVbkNXn8wcxjJ8b0euaZysTvyuzVJUYH9i6Kpsl1ijVOSbTtPZ2f6V6nYuectnbbLGdb2tNLNP5fjkVi1J-BcbDwbg_svOfQNhMIRdsu4KHEnIsIiQYJoGQvsKQmAuOsE8lojRnrPEIlZQHHIUEEs8PBVHQjaJr0EjSRNwAS8ebmMNk4DHkRYgQSt2ARoxRnzuhJG2AitmNlxnVR3x4REI41sMf6-GP8-GPd20QmVn7RZV4MB7p0u3fq96BZpY-rn1B96CxWW3FgyGOeDR6_g1rIQSN). *Ethology*, 102: 1-21.
- Deb, P. and Trivedi, P. (1997). [Demand for medical care by the elderly: a finite mixture approach](https://ubc.summon.serialssolutions.com/2.0.0/link/0/eLvHCXMwnV1tS8MwEA5uftAvvk6cL6N_oK5L0pfJUEr34gQZ4j75JaZLCsOtzqng_os_1kuTDjsVwU-lF9oL5Mg9x909hxDBZ469cick3G0GggcJ9YXHSUIDb6RyXn6DgsPmcqVUx89bY1SVZVYmmCX1AS_FE1nHOHCxiy9nz7aaHqWyrGaURgmVwEI1Te7yPlYM7BpLEtvHLi54IF2E-AWZUuNautvoId9FXlOy0vJX5G38x3Z30JaBnVao7WQXrcl0D23kXckv--ijNeXzx4u2nPJUtOrZi6VlAGstk88pLqjepaIkXlgAKK2OGv09WZi1c7MYWt2xQrjFT27G7yqJURSGhuncSCto2O0MoyvbTG6wAT4Ejg0xVSAVdTyn2PeJkBC4yKRBhUdHHuFurPphMSAzAXCPOwnAGgHOWkoVrwEoPUDl9CmVh6rySgDkGIlmTByaSCfmIwExYRx7SSBjX1bRID9MNtP8HEwzMWPG7vpRX6XYmwxgnMtUTY0DD8wIIw3CWNhvs-uwQ6kDEodFA4ZZr4oq2REuf2fOr4puMxv5puYPLT8qMZKjX3Qdo01Nk6sKK09Q-XX-Jk8zXogaWm9H94NeLbPxT5yWAM4). *Journal of Applied Econometrics*, 12(3), 313-336.
- Grunfeld Y. (1958). [The determinants of corporate investment](https://www.proquest.com/docview/301899386?pq-origsite=summon&accountid=14656). Ph.D. thesis, Department of Economics, University of Chicago.
- Harrison, D. and Rubinfeld, D.L. (1978). [Hedonic prices and the demand for clean air](http://ubc.summon.serialssolutions.com/2.0.0/link/0/eLvHCXMwnV07T8MwELYQDLDwKCDeyghDaOy0TixVSICourBVYrRc50wBNVRtQeLfc-fEpYAQiMF5nB9JbOf8Obn7zFgqzpP4i04wgANV7iQgPC-gZTOligRsAiYRhfWLOSya6pz_8EOfyyZhgjiRSp5m-RmteClj0sBpm5NBV-_2aq6H88QvLTfPEBznfijk88BE9pkWQd-nMWplAmOwC-NPd4PdBS-eYHjyxS_wG7njH59pk63XkDS6rPrQFluCssFWg8fytMF2bz684TBhrQ6m22zWGZnJ00UPCiLY7TT9WTR8JmP6-6iKHBNr0TTEmbKIEHLWcQWMUBDiED7XcrwNUwZxJTIPk1qww_rdm_51L66XcYh5KomtVGZGtJwcEO-NQplVvCDqQwlKcGvBtp2yhjxghZFu4KRSTqZcDFomFZDusuXyuYQ9FqlMICISMLA0L3WpqrhpXAvz2MLl-ywOTajHFVmHDlZsVMea6lhnufZ1rAWmD-38x_RZ6Ay6BigV8NDYor_kvPR9Z34ZAHgEqmT9qlPTxvCGgeOcHncPdIhhjCHnWKrQw9no4N9XP2Rr3DMp05ejI7Y8m7zAsaeZOPGvjN9evwO2Ww2r). *Journal of Environmental Economics and Management*, 5, 81–102.
- Mangasarian, O. L., Street, W. N., and Wolberg, W. H. (1995). [Breast cancer diagnosis and prognosis via linear programming](http://ubc.summon.serialssolutions.com/2.0.0/link/0/eLvHCXMwlV1Nb9QwEB2xPSA4tHQLohRKDoDgsDSJndiRKlApVBx74PNk2bGDKui2jbf8Ff4uM46tbpZKFZdIO55NvNLLeLx-8waAla_z2UpMEAZXtlZKzllZGSk7WTBdtDa3ts6N61aoOnUqjSGWZaAJhkN9zJfML7dHCi-yfnt-MaPmUXTIGjtpTGAi2cDr-rKkvFsPbQwYBpyafxsvQMTDbPEOVxE5yQSH8iZKHH2iKv4TrsMadLQBKk03kU9WagPHAo___7vuwXpMT7ODAU-bcMvNp3A7seOnsJG6QGQxKEzh7pKk4RQ2o91nL6Oi9ast-LN_qvufb94RAX6xvxc-ZIPtkFDXj23vB_rfiR-b9dxmx_3ZdUO_T_TYgFtsfIXHtuOBinaK84wD9-Hz0YdPhx9nsSPEDPeBJWmp6pJ3VS1tzlvR8Ua6WljWlm3RaMkMs52R1jmJWGu4a6wwtugaaauGtQWaH8Da_GzuHkJWVlpwbgpthKOz3aZsmeRWC9mJxnG7DS8STNT5IPyhaMOEO0xF_WkUZ4qrSuTomEB0k-MzgpiK3UXx4un_F_9DX3qvDjCPw2yPMbxfcCPwLXrd6lgngdMmqa5lx6cJqyoiNTzQLz3xeRq4YWZbAYxXXgGJ27CT8K5iZPOqJEFAUnl8dP2XduDOUPVPjObHsLboL92TIGmxCxPx9TteMcDshnf0L2aRR50). *Operations Research*, 43(4), 570-577.
- Wolberg, W. H. and Mangasarian, O. L. (1990). [Multisurface method of pattern separation for medical diagnosis applied to breast cytology](https://libkey.io/libraries/498/articles/35797998/full-text-file?utm_source=api_542). *Proceedings of the National Academy of Sciences of the United States of America*, 87(23), 9193–9196.
- Wood, P. (1967). [Algebraic Model of the Lactation Curve in Cattle](https://ubc.summon.serialssolutions.com/2.0.0/link/0/eLvHCXMwfV1LS8NAEF6kIHhRW98voic9xGYzyW4WilCqxYN4ED2XzXRXim2qrRX99242SW0i7TGzEwiZycw3zOQbQsC_9txKTIg8yYw_U2awHBUyFIwr1JE0RZEG3sfKqM7FkoY-RE3fQBQWSFulc56WW0-Pt39DHRXe5YJuduHGcgJK5zDRgLs5k-ZCduluZWuKpgVvwvdP9a-_f9SNK554m2zmINNpZ15RJ2sqaZB1O-yJ0wap5x_01LnMWaevdshHayQnbzft4WvaSh5gq2mvnUycrkwblkVj7Rjw6DxIzLr55dPObPKlyqJB4nQsZXIu3iUv3bvnzr2b72Nw0WR5z6WxgV_UZ5iCCm1qF8VBMlTgaRUjgKAKgcUgI_SBa8H6QkrsM8Yx5MA57JFaMk7UAXGCCEMQ0gQ3oYKYU6GFBMG0L1CHmseH5LwwUu89o93o2XY5RL3ifRqdwnordPYzs841ipOjpSfHZMOEJZ4mKBqckNrnZKZOLSnDmXW2X2pLzng). *Nature*, 216, 164–165.

## Policies

See the general [MDS policies](https://ubc-mds.github.io/policies/).

## Attribution
    
The course is built upon previous years' materials developed by previous instructors.

## License

© 2025 G. Alexi Rodríguez-Arelis, Payman Nickchi, Rodolfo Lourenzutti, and Vincenzo Coia.

Software licensed under [the MIT License](https://spdx.org/licenses/MIT.html), non-software content licensed under [the Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International (CC BY-NC-SA 4.0) License](https://creativecommons.org/licenses/by-nc-sa/4.0/). See the [license file](LICENSE.md) for more information.
