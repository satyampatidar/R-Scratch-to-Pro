# input data
library(readr)

titanic <- read_csv("titanic.csv")

# summarize data
library(dplyr)
titanic_table <- titanic %>%   group_by(Pclass, Sex, Survived) %>%   count()
titanic_table$Survived <- factor(titanic_table$Survived,  levels = c("Yes", "No")) 
head(titanic_table)

library(ggplot2)
library(ggalluvial)

ggplot(titanic_table,
       aes(axis1 = Pclass,
           axis2 = Survived,
           y = n)) +
  geom_alluvium(aes(fill = Sex)) +
  geom_stratum() +
  geom_text(stat = "stratum", 
            label.strata = TRUE) +
  scale_x_discrete(limits = c("Class", "Survived"),
                   expand = c(.1, .1)) +
  labs(title = "Titanic data",
       subtitle = "stratified by class, sex, and survival",
       y = "Frequency") +   theme_minimal()

