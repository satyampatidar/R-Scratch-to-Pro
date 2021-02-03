library(ggplot2)

#Reading the data
w <- read.csv(file="WDS2012.csv", head=TRUE, sep=",")

p<-ggplot(data=w,aes(x=le,y=tfr,color=area))

# Density Distribution, Median and IQR by Area

p <- ggplot(w, aes(x=reorder(factor(area),tfr,FUN="median"), y=tfr))
p + geom_violin() + geom_boxplot(width=.1, outlier.size=0) +
scale_y_continuous(breaks=c(1,2,3,4,5,6,7)) +
theme(axis.title.y=element_text(angle=0,size=12),
axis.text.y=element_text(color="black", size=12),
axis.text.x=element_text(color="black", size=12),
legend.position="none") +
labs(title="Country TFRs: Density Distribution, Median and IQR by Area,
2012", x="", y="TFR")
