# Multivariate Time Series

#install.packages("quantmod")

library(quantmod)
library(dplyr)

# Get Apple(APPL) closing prices

apple <- getSymbols("AAPL", 
                    return.class = "data.frame", 
                    from="2018-01-01")
apple <- AAPL%>%
  mutate(Date = as.Date(row.names(.)))%>%
  select(Date,AAPL.Close)%>%
  rename(Close=AAPL.Close)%>%
  mutate(Company = "Apple")


facebook <- getSymbols("FB", 
                       return.class = "data.frame", 
                       from="2018-01-01")
facebook <- FB %>% 
  mutate(Date = as.Date(row.names(.))) %>%
  select(Date, FB.Close) %>%
  rename(Close = FB.Close) %>%
  mutate(Company = "Facebook")

# Combine Data for both of the companies

mseries <- rbind(apple,facebook)

# Plotting mseries
ggplot(mseries, aes(x=Date, y= Close, color=Company))+
  geom_line(size=1) +
  scale_x_date(date_breaks = '1 month', labels = scales::date_format("%b")) +
  scale_y_continuous(limits = c(150, 220), breaks = seq(150, 220, 10),
                     labels = scales::dollar) +
  labs(title = "NASDAQ Closing Prices", subtitle = "Jan - Aug 2018",
  caption = "source: Yahoo Finance",y = "Closing Price") +
  theme_minimal()+ scale_color_brewer(palette = "Dark2")
  scale_color_brewer(palette = "Dark2")
