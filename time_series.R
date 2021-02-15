library(ggplot2)
data("economics")
data(economics,package="ggplot2")
str(economics)

x <- ggplot(economics,aes(x=date,y=psavert))
x+geom_line()+labs(title="Personal Saving Rate",x="Date",y="Personal Saving Rate")

# When Plotting Time Series be sure that the date variable is classs date and not class character

y <- ggplot(economics,aes(x= date, y = psavert))
y+geom_line(color="indianred3", size=1)+geom_smooth()+
  scale_x_date(date_breaks = '5 years')+
  labs(title = "Personal Saving Rate",
       subtitle = "1967 to 2015", x="",y="Personal Saving Rate")
