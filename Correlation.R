# Loading Libraries

library(ggplot2)
library(ggcorrplot)

data(SaratogaHouses, package = "mosaicData")

#select Number Variables

df <- dplyr::select_if(SaratogaHouses, is.numeric)

# calulate the correlations

r <- cor(df, use="complete.obs")
round(r,2)

ggcorrplot(r)

# To print Data on Graph

ggcorrplot(r,
           hc.order = TRUE,
           type = "lower",
           lab = TRUE)
