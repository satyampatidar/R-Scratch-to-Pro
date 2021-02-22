# Loading Libraries

library(survival)
library(survminer)

# NCCTG Lung Cancer Dataset

data(lung)
sfit <- survfit(Surv(time, status) ~  1, data=lung)

# Plot of Survival Probability

ggsurvplot(sfit,
           title="Kaplan-Meier curve for lung cancer survival")

#Advance Plot for men and women

sfit <- survfit(Surv(time, status) ~  sex, data=lung)
ggsurvplot(sfit, 
           conf.int=TRUE, 
           pval=TRUE,
           legend.labs=c("Male", "Female"), 
           legend.title="Sex",  
           palette=c("cornflowerblue", "indianred3"), 
           title="Kaplan-Meier Curve for lung cancer survival",
           xlab = "Time (days)")