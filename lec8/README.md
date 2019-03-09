# Lecture 8: Missing Data

## Agenda

- Worksheet: using the `mice` package 
- 15-minute break: 10 of which is to be used for instructor evaluations. 
- Discussion: types of missingness
- Review of the course (time permitting)

Worksheet: [html](https://ubc-mds.github.io/DSCI_562/lec8/worksheet.nb.html); [.Rmd](https://raw.githubusercontent.com/UBC-MDS/DSCI_562/master/lec8/worksheet.Rmd)

## Learning Objectives

- Understand common types of missing data problems.
- Understand different types of imputation methods, and the consequences of each.
- Use `mice` to fit multiply imputed models.
- Identify the pitfalls of mean imputation.

## Concepts

TBD

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