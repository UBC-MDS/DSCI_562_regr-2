# About the Course

In this course, we'll examine some of the "monkey wrenches" / special cases that often come up in projects involving regression. We'll be exploring two major themes:

**1\. What happens if we ignore the special case?**

As in any analysis decision you make, there are consequences to ignoring these monkey wrenches. Sometimes these consequences are worth accepting when trading off, say, simplicity. By the end of this course, you are expected to understand these consequences so that you can make your own decisions.

**2\. What are some common approaches to dealing with these special cases?**

This is where we get into some regression methodology on standard ways of dealing with these special cases. Keep in mind there are _many_ approaches to all of these: each topic could be a course on its own, or even a PhD dissertation. We don't expect you to be experts in any of these topics, but you should have a foundational knowledge to be able to learn more depth if you ever need to.

As in Regression I (DSCI 561), we'll focus on solving the following problems using regression:

1. Describing the uncertainty in quantitative predictions/estimates.
2. Interpreting the effect that the predictors have on the response.

We will (generally) _not_ focus on the task of obtaining an optimal prediction model. Why not? Because this task involves getting the model function "just right", and there's a lot involved with this. So much involved, that there's an entire discipline dedicated to it called _supervised learning_. 

To address these two tasks, it's often useful to make assumptions about how the data came about. We'll be shifting to a non-binary way of thinking about the truthfulness of these assumptions, and how we can still "win" in the bias-variance tradeoff is the assumption is "close enough" to the truth.

Throughout this course, I'll be using the terminology "predictors" and "response" to refer to `X`'s and `Y` (as usual with me).
