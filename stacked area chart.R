# Stacked Area Charts

# gccokbook package will be used

library(gcookbook)

# Use When you want to depict a overall change over time

data(uspopage, package = "gcookbook")

ggplot(uspopage, aes(x = Year, y = Thousands, fill = AgeGroup))+
  geom_area()+
  labs(title = "US Population by age", x = "Year", y = "Population in Thousands")

# More clear graph changed Population to Millions

data(uspopage, package = "gcookbook")

ggplot(uspopage, aes(x = Year, y = Thousands/1000, fill = forcats::fct_rev(AgeGroup)))+
  geom_area(color = "black")+
  labs(title = "US Population by age", subtitle = "1900 to 2002", caption = "source: U.S. census Bureau, 2003, HS-3", x = "Year",
  y = "Population in Millions", fill = "Age Group") + scale_fill_brewer(palette = "Set2")+theme_minimal()
