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
p+facet_grid(wine$fixed.acidity~.)


#In Univariate Graphs on x axis number of samples hogaa.
ggplot(wine,aes(x=fixed.acidity))+geom_histogram(fill='red')+scale_x_log10(breaks = 4:15)+
xlab("Fixed Acidity")+ylab("Count")+ ggtitle("Histogram of Fixed Acidity Values")
ggplot(wine) + geom_histogram(aes(x=volatile.acidity),fill='blue')+scale_x_log10(breaks=seq(0.1,1,0.1))
ggplot(wine) + geom_histogram(aes(x=citric.acid),fill='green')+scale_x_log10()

p1 <- ggplot(data = wine, aes(x = residual.sugar))+geom_histogram()+
  scale_x_continuous(lim = c(0, quantile(wine$residual.sugar, 0.95)))+
  xlab('residual.sugar, 95th percentile truncated')

p2 <- p1 + scale_x_log10(breaks=1:9) + xlab('residual.sugar, log10')
grid.arrange(p1, p2, ncol=1)

p3 <- ggplot(data = wine, aes(x = chlorides)) +   geom_histogram()+
  scale_x_continuous(lim = c(0, quantile(wine$chlorides, 0.95)))+
  xlab('chlorides, 95th percentile truncated')

p4 <- p3 + scale_x_log10(breaks=seq(0.01,0.11,0.02)) + xlab('chlorides, log10')
grid.arrange(p3, p4, ncol=1)

p5 <- ggplot(data = wine, aes(x = sulphates)) +
  geom_histogram() +   scale_x_continuous(lim = c(0, quantile(wine$sulphates, 0.95))) +
  xlab("sulphates, 95th percentile truncated")

p6 <- p5 + scale_x_log10(breaks=seq(0,1,0.2)) + xlab("sulphates, log10")
  grid.arrange(p5, p6, ncol=1)
