# Area Charts with Time Series

# Basic area chart on Economics Data

library(ggplot2)

ggplot(economics, aes(x = date, y = psavert))+
  geom_area(fill="lightblue", color = "black")+
  labs(title = "Personal Savings Rate", x = "Date", y = "Personal Savings Rate")
