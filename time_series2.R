# Loading library
library(astsa)
library(ggplot2)

# Checking Data Johnson and Johnson Quarterly Earnings Per Share
data(jj)
help(astsa)

help(jj)
View()

# jj[1]

plot(jj, type = "o", ylab = "Earining per share", main = "Johnson and Johnson")

dljj=diff(log(jj))          # difference the logged data
plot(dljj)                  # plot it if you haven't already
shapiro.test(dljj)          # test for normality

par(mfrow=c(2,1))        # set up the graphics 
hist(dljj, prob=TRUE, 12)   # histogram    
lines(density(dljj))     # smooth it - ?density for details 
qqnorm(dljj)             # normal Q-Q plot  
qqline(dljj)             # add a line   

#No Boxplot cannot be drawn

y <- ggplot(jj, aes(x = price, fill = clarity))
y+geom_histogram()

