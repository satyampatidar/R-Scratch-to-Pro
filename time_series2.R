# Loading library
library(astsa)
library(ggplot2)

# Checking Data Johnson and Johnson Quarterly Earnings Per Share
data(jj)
help(astsa)

help(jj)
View()

df=data.frame(jj) #converting it to dataframe
df

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

a=ggplot(df,aes(jj))
#plot the histogram
a+geom_histogram()

#qqplot
qqnorm(jj)

#beautify
a+geom_histogram(color="dark blue",fill="light blue")

#boxplot
a+geom_boxplot()


#q8
a+geom_density()

#area curve
a+geom_area(stat="bin")

