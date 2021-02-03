# BoxPlot

library(ggplot2)
w=read.csv(file="WDS2012.csv",head=TRUE,sep=",")
p+geom_boxplot(outlier.size = 0)+geom_jitter(position=position_jitter(h=.1))

p+geom_boxplot(outlier.size = 0)+geom_jitter(position=position_jitter(h=.5))

p+geom_boxplot(outlier.size = 0)

#NoBoxPlot
p+geom_jitter(position=position_jitter(h=.5))

#Area Chart

ggplot(w,aes(tfr))+geom_area(stat = "bin", bins = 30, fill = "steelblue")

#BoxPlot
p <- ggplot(data=subset(w,area=="Africa"),
            aes(x=reorder(factor(region),tfr,FUN=median),y=tfr, color=region))
p + geom_boxplot(outlier.size=0) + geom_jitter(position=position_jitter(w=.2,h=0))+
  annotate("text",x=1.2, y=5.5,label="South Sudan", size=4) +
  annotate("text",x=3.3, y=1.5,label="Mauritius", size=4) +
  annotate("text",x=4.8, y=7.1,label="Niger", size=4) +
  annotate("text",x=4, y=3.2,label="Gabon", size=4) +
  labs(title="Country TFR's for Africa, 2012",x="", y="TFR") +
  theme(axis.ticks.x=element_blank(), axis.title.y=element_text(angle=0),
  legend.position="none")





