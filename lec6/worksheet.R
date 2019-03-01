rm(list=ls(all=TRUE)) # remove any objects from old R sessions
############################################################################################################
#Research Question                                                                                         #
#What's the reason(s) that influence the probability of a student applying to a graduate school?           #
#H1: The higher the GPA, the more likely that a student apply to graduate school                           #
#H2: If one of the parents has a graduate degree, more likely the student want to apply to graduate school #
############################################################################################################

###
#Data Preparation
#Take a look at the data, we want to know how the possibility of apply to graduate school 
#influenced by gpa and pared. We have 400 observations.
#apply: ordinal -> unlikely, somewhatlikely, unlikely (1/2/3)
#pared: binary -> whether at least one parent has a graduate degree (0/1)
#gpa: continuous -> grade point average
###
require(tidyverse)
require(MASS)
require(broom)
require(lmtest)
require(foreign)
require(reshape2)

score <- read.dta("https://stats.idre.ucla.edu/stat/data/ologit.dta") %>%
  as_data_frame() %>%
  dplyr::select(apply, pared, gpa) %>%
  mutate(apply=factor(apply, ordered=T),
         pared=factor(pared))

score

###
#Descriptive statistics
#Relationship between apply and pared? -> In the same application category, "very likely" has the highest percentage 
#of having a parent who has graduate degree
#Relationship between apply and gpa? -> wow, higher gpa seems to assoiated with higher probability in applying
###

table <- ftable(xtabs(~apply+pared, data=score)) %>%
  as.data.frame.matrix() 
rownames(table) <- c("unlikely", "somewhat likely", "very likely")
colnames(table) <- c("pared=0", "pared=1")
table$percent <- table[,2]/(table[,2]+table[,1])
table

value <- score %>%
  group_by(apply) %>%
  summarize(mean(gpa))
value

scorep <- score %>%
  ggplot(aes(x=apply, y=gpa))+
    geom_boxplot(size=.75)+
    geom_jitter(alpha=.1, height=.2)+
    facet_grid(.~score$pared)+
    theme(axis.text.x=element_text(angle=45, hjust=1, vjust=1))+
    coord_flip()
scorep  

###
#Model formulation: fit different models and compare the performance
###

#####################################################################################################
# Option 1: OLS regression (violation of assumption that the response needs to be interval outcome) #
#####################################################################################################
lm.M1 <- score %>%
  mutate(apply.c=as.numeric(score$apply)) %>%
  lm(apply.c~pared+gpa, data=.)

#Fitting statistics
anova(lm.M1) # get the Anova table for the model, including the F test
summary(lm.M1) # get t-tests and some fit statistics for the model
score <- score %>%
  mutate(apply.c=as.numeric(score$apply),
         yhat.lm.M1=fitted(lm.M1), # the estimated y values
         resid.lm.M1=resid(lm.M1)) # the errors

#Diagnostic plots
par(mfrow=c(2,2),mai=c(0.6,0.6,0.6,0.6),cex=0.7)
plot(score$yhat.lm.M1,score$resid.lm.M1, main="lm M1, Residual Plot",
     xlab="yhat", ylab="residual")
plot(score$apply.c,score$yhat.lm.M1, main="lm M1, Fitted line plot",
     ylab="yhat", xlab="apply")
qqnorm(score$resid.lm.M1, main="lm M1, Normality plot")
hist(score$resid.lm.M1, breaks =8 , density=10,col="green", border="black",
     main="lm M1, Error Distribution") 
par(mfrow=c(1,1),mai=c(1.0,1.0,1.0,1.0),cex=1.0)

#Fitted plot
lm.M1.plot <- score %>%
  ggplot(aes(y=apply.c, x=gpa))+
    geom_jitter(alpha=.2, height=.2) +
    geom_line(aes(x=gpa, y=yhat.lm.M1))+
    facet_grid(.~score$pared)
lm.M1.plot

########################################################################
#Option 2: Classifier (loss the information contained in the ordering) #
########################################################################
#Give it a try! :D 

########################################################
#Option 3: Ordinal logistic regression (Sounds great!) #
########################################################
olr.M0 <- polr(apply~1, data=score)         #Null model, no predictors
olr.M1 <- polr(apply~pared*gpa, data=score) #Full model, two predictors with interaction.
olr.M2 <- polr(apply~pared+gpa, data=score) #Reduced model, without interaction.
olr.M3 <- polr(apply~pared, data=score)     #Reduced model, with only pared.
olr.M4 <- polr(apply~gpa, data=score)       #Reduced model, with only gpa.

#Are gpa and pared good predictors? 1/0 Yes.
lrtest(olr.M1, olr.M0)
#Is the interaction significant? 1/2 No, can drop it.
lrtest(olr.M1, olr.M2)
#Is gpa important? 2/3 Hummm... slightly important, better to keep.
lrtest(olr.M2, olr.M3)
#Is pared important? 2/4 Yes! Keep it.
lrtest(olr.M2, olr.M4)

olr.M5 <- olr.M2 #My final selection according to the above observations.
score <- score %>%
  cbind(., olr.M5.prob.=predict(olr.M5, ., type="probs")) %>% #estimated probability
  cbind(., olr.M5.decision=predict(olr.M5))

#Interpretation
coef(summary(olr.M5)) # coefficients
exp(coef(olr.M5))     # proportional odds ratios

#Figures
newdat <- data_frame(pared=as.factor(rep(0:1, 200)), gpa=rep(seq(from=1.9, to=4, length.out=100), 4)) %>%
  cbind(., yhat.prob=predict(olr.M5, ., type="probs")) %>%
  as_data_frame()
names(newdat) <- c("pared", "gpa", "unlikely", "somewhat likely", "very likely")
plot <- newdat %>%
  melt(id.vars=c("pared", "gpa")) %>%
  ggplot(aes(x=gpa, y=value, colour=variable)) +
    geom_line(size=1.5) +
    labs(y="Probability") +
    facet_grid(.~pared)
plot

#Goodness of fit
gf <- table(score$apply, score$olr.M5.decision)
accuracy <- (gf[1]+gf[5]+gf[9])/400

#Probabilistic forecast of one respndent
forcast <- sample_n(score, 1) 



  



