w=read.csv(file="WDS2012.csv",head=TRUE,sep=",")
w
p<-ggplot(data=w,aes(x=le,y=tfr,color=area))
library(ggplot2)
p<-ggplot(data=w,aes(x=le,y=tfr,color=area))
p
p=ggplot(data=w,aes(x=le,y=tfr,color=area))
p
p+geom_point()
p+geom_jitter()
p+geom_count()

p <- ggplot(data=w, aes(x=le,y=tfr))
p+geom_point(size = 3, alpha=1/2)
p+geom_jitter(size = 4, alpha = 1/2)

wna <- subset(w,region == "Northern Africa")
p <- ggplot(data = wna, aes(x=le,y=tfr))
p+geom_point()+geom_text(aes(label=country), nudge_y = .2, size = 4)+xlim(50,80)

p+geom_point()+geom_label(aes(label= country),nudge_y = .3,size=3)+xlim(50,80)+ylim(2,6)

#Facets
p <- ggplot(data = w, aes(x = le, y = imr))+geom_jitter()
p+facet_grid(.~area)
p+facet_grid(area~.)

# More Facets
w$tfrGT2 <- w$tfr >2
p <- ggplot(data = w, aes(x = le, y = imr))+geom_jitter()
p+facet_grid(area~tfrGT2,labeller="label_both")
p+facet_grid(tfrGT2~area,labeller = "label_both",margins = TRUE)