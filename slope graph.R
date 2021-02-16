# Slope Graph

# For limited set of data it is best to use

library(CGPfunctions)
# Select Central American Countries data for 1992, 1997, 2002, 2007
df <- gapminder %>%
  filter(year %in% c(1992,1997,2002,2007) &
  country %in% c("Panama", "Costa Rica", "Nicaragua",
                 "Honduras", "EI Salvador","Guatemala","Belize")) %>%
  mutate(year = factor(year),
         lifeExp = round(lifeExp))

# Create Slope Graph

newggslopegraph(df, year, lifeExp, country)+
  labs(title = "Life Expectancy by Country", subtitle = "Central America",
       caption = "source: gapminder")
