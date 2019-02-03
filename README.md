# About DSCI 562: Regression II

In this course, we'll examine some of the "monkey wrenches" / special cases that often come up in projects involving regression. We'll exploring two major themes:

1\. What happens if we ignore the special case?

As in any analysis decision you make, there are consequences to ignoring these monkey wrenches. Sometimes these consequences are worth accepting when trading off, say, simplicity. By the end of this course, you are expected to understand these consequences so that you can make your own decisions.

2\. What are some common approaches to dealing with these special cases?

This is where we get into some regression methodology on standard ways of dealing with these special cases. Keep in mind there are _many_ approaches to all of these: each topic could be a course on its own, or even a PhD dissertation. We don't expect you to be experts in any of these topics, but you should have a foundational knowledge to be able to learn more depth if you ever need to.

As in Regression I (DSCI 561), we focus on the following regression tasks:

1. Interpreting the effect that the predictors have on the response.
2. Describing the uncertainty in quantitative predictions.

We will generally _not_ focus on the task of optimizing the fit of a model function. Although, we might make an exception for lecture 1 in case we need to cover loess.

Why not this task? Because there's a lot involved with getting the model function "just right". So much, that there's an entire discipline dedicated to it called _supervised learning_. It turns out that supervised learning is closely tied with the task of _prediction_, because in that case, we want to get the model function "just right" so that our predictions are good.

As usual with me, I'll be using the terminology "predictors" and "response" to refer to `X`'s and `Y`.
