library(ggplot2)

w=read.csv(file="WDS2012.csv",head=TRUE,sep=",")
p <- ggplot(data = w, aes(x=le,y=tfr))
p+geom_jitter()+ggtitle("Life EXpectancy and TFR") + xlab("life expectancy(years)")+
  ylab(("total fertility rate(tfr)")+scale_x_continuous(breaks = seq(50,80,by=5), labels = c(50,"fifty-five",60,65,70,75,80)))+
  theme(plot.title = element_text(color = "blue", size = 24, hjust = 0.5),
        axis.title = element_text(size = 14,face = "bold"),
        axis.text = element_text(size = 14),
        axis.text.y = element_text(color = "black"),
        axis.text.x = element_text(color = "purple", size = 20),
        axis.ticks.y = element_blank())


p <- ggplot(data = w, aes(x=le,y=tfr))
p+geom_jitter()+ggtitle("Life EXpectancy and TFR") + xlab("life expectancy(years)")+
  ylab(("total fertility rate(tfr)")+scale_x_continuous(breaks = seq(50,80,by=5), labels = c(50,"fifty-five",60,65,70,75,80)))+
  theme(plot.title = element_text(color = "blue", size = 24, hjust = 0.5),
        axis.title = element_text(size = 14,face = "bold"),
        axis.text.x = element_text(color = "green"),
        axis.text = element_text(size = 14),
        axis.text.y = element_text(color = "black"),
        axis.ticks.y = element_blank())
