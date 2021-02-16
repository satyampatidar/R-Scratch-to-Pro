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
names(plotdata_wide) <- c("country","y1952","y2007")

# Create dummbell plot

ggplot(plotdata_wide, aes(y=country, x= y1952, xend = y2007))+ geom_dumbbell()
