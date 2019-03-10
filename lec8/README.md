# Lecture 8: Missing Data

## Agenda

- Worksheet: using the `mice` package 
- 15-minute break: 10 of which is to be used for instructor evaluations. 
- Discussion: types of missingness
- Review of the course (time permitting)

Worksheet: [html](https://ubc-mds.github.io/DSCI_562/lec8/worksheet.nb.html); [.Rmd](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec8/worksheet.Rmd)

## Learning Objectives

- Identify and explain the three common types of missing data mechanisms.
- Identify a potential consequence of removing missing data on downstream analyses.
- Identify a potential consequence of a mean imputation method on downstream analyses.
- Identify the three steps involved with a multiple imputation method for handling missing data.
- Use the `mice` package in R to fit multiply imputed models.

## Resources

Tutorials on the `mice` package, in increasing order of depth: 

- [my brief `mice` tutorial](https://vincenzocoia.github.io/Interpreting-Regression/dsci-562-tutorial-missing-data.html)
- [data science plus](https://datascienceplus.com/handling-missing-data-with-mice-package-a-simple-approach/)
- [jstat article on `mice` R package](https://www.jstatsoft.org/article/view/v045i03/v45i03.pdf)
	- Extensively covers the idea behind the `mice` package.
	- Section 2.2 provides a good overview of the package workflow, which I recommend reading.
	- Section 2.3 provides details on the imputation. It's theoretical, so only take a look if you really need to know how the imputation is happening.
	- Section 2.4 provides an example of using the `mice` package. Perhaps more verbose than it needs to be?

If you want a deeper look on multiple imputation:

- Book: "Multiple Imputation for Nonresponse in Surveys" by Rubin (1987), available through UBC library.
	- Extensively covers the theory behind multiple imputation.
	- Page 76-77 covers pooling of models, and uses variable names that you see in the output of `mice::pool()`.

## Concepts

- There are three common missing data mechanisms:
	- Missing Completely At Random (MCAR): when the chance of missingness does not depend on any variable; missingness is totally random.
	- Missing At Random (MAR): when the chance of missingness depends on other observed variables.
	- Missing Not At Random (MNAR): when the chance of missingness depends on unobserved variables.
- Proceeding with an analysis by removing missing data can result in a model with standard errors of the estimates that are larger than they could be by including partially complete records.
- Proceeding with an analysis by imputing missing data by an estimate of the mean can result in a model with standard errors of the estimates that are smaller than they ought to be.
- An approach that uses the information contained in partially complete records, yet does not assume any more information, is to use multiple imputations. The approach contains three steps:
	1. Form multiple datasets containing imputed values. Each dataset should be formed by imputing the missing records in each unit/row with a random draw from a predictive distribution for those records.
	2. Fit the model of interest on each imputed dataset.
	3. Combine the models to obtain one final model.  