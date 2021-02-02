library(ggplot2)

w=read.csv(file="WDS2012.csv",head=TRUE,sep=",")
africa <- subset(w, area == "Africa")
europe <- subset(w, area == "Europe")
p <- ggplot(data= europe, aes(x=le, y=tfr))
p+geom_jitter(color = "blue")+geom_jitter(data = africa, color= "red")            


africa_europe <-rbind(africa,europe)
p <- ggplot(data = africa_europe, aes(x =le, y= tfr, color = area))
p+geom_jitter()    
p <- ggplot(data = rbind(africa,europe), aes(le,y=tfr,color = area))
p+geom_jitter()

