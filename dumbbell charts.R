# Dummbell Charts

library(ggalt)
library(tidyr)
library(ggplot2)
library(dplyr)
library(gapminder)

# Load Data
data(gapminder,package = "gapminder")

# Subset Data
plotdata_long <- filter(gapminder,
                        continent == "Americas" &
                        year %in% c(1952, 2007)) %>%
  select(country, year, lifeExp)

#convert data to video format
plotdata_wide <- spread(plotdata_long, year, lifeExp)

# Renaming
names(plotdata_wide) <- c("country","y1952","y2007")

# Create dummbell plot

ggplot(plotdata_wide, aes(y=country, x= y1952, xend = y2007))+
  geom_dumbbell()

# Graph is not sorted

ggplot(plotdata_wide, aes(reorder(country, y1952),x = y1952, xend = y2007))+
  geom_dumbbell(size = 1.2, size_x = 3, size_xend = 3, colour = "grey",
                colour_x = "blue", colour_xend = "red")+ theme_minimal()+
                labs(title = "Change in Life Expectancy", subtitle = "1952 to 2007", x = "Life Expectancy (Years)", y = "")
 
 