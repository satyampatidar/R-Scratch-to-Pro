# BoxPlot

library(ggplot2)
w=read.csv(file="WDS2012.csv",head=TRUE,sep=",")
p+geom_boxplot(outlier.size = 0)+geom_jitter(position=position_jitter(h=.1))

p+geom_boxplot(outlier.size = 0)+geom_jitter(position=position_jitter(h=.5))

p+geom_boxplot(outlier.size = 0)

#NoBoxPlot
p+geom_jitter(position=position_jitter(h=.5))
