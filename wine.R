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

#Univariate Plots Section

grid.arrange(qplot(wine$fixed.acidity),
             qplot(wine$volatile.acidity),
             qplot(wine$citric.acid),
             qplot(wine$residual.sugar),
             qplot(wine$chlorides),
             qplot(wine$free.sulfur.dioxide),
             qplot(wine$total.sulfur.dioxide),
             qplot(wine$density),
             qplot(wine$pH),
             qplot(wine$sulphates),
             qplot(wine$alcohol),
             qplot(wine$quality),
             ncol = 4)

p <- ggplot(wine, aes(x = quality, y = volatile.acidity))
p+facet_grid(.~wine$fixed.acidity)
p+facet_grid(.~wine$fixed.acidity~.)