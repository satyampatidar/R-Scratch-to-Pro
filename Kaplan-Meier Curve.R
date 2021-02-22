# Loading Libraries

library(survival)
library(survminer)

# NCCTG Lung Cancer Dataset

data(lung)
sfit <- survfit(Surv(time, status) ~  1, data=lung)
ggsurvplot(sfit,
           title="Kaplan-Meier curve for lung cancer survival") 