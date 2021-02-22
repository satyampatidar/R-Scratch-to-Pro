# Loading Libraries

library(ggplot2)
library(ggcorrplot)

data(SaratogaHouses, package="mosaicData")

houses_lm <- lm(price ~ lotSize + age+
                landValue +
                livingArea + bedrooms + bathrooms +
                waterfront, 
                data = SaratogaHouses)

# Now Plotting

# Library Visreg

library(visreg)

# Coditional plot of price Vs living area

visreg(houses_lm, "livingArea", gg = TRUE)

# Label Plotting and comparison

visreg(houses_lm, "waterfront", gg = TRUE) +
  scale_y_continuous(label = scales::dollar) +
  labs(title = "Relationship between price and location",
       subtitle = "controlling for lot size, age, land value, bedrooms and bathrooms",
       caption = "source: Saratoga Housing Data (2006)",
       y = "Home Price",
       x = "Waterfront")
