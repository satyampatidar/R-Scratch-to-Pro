library(dplyr)
library(ggplot2)
library(gridExtra)

wine <- read.csv("winequality-red.csv")
str(wine)
View(wine)
wine$quality <-as.numeric(wine$quality)
cor(wine$alcohol,wine$quality)

table(wine$quality)
qplot(wine$fixed.acidity)
