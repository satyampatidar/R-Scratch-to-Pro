
# Loading library
library(ggplot2)

# Checking Data
data("diamonds")

# Analysing the columns with mean, median, itemwise, Quarterwise
summary(diamonds)
View(diamonds)

# Loading Dimensions
dim(diamonds)

# Plot with legend on the right side gives clarity about each diamond
x <- ggplot(diamonds, aes(carat,price, color = clarity))
x+geom_point()


x <- ggplot(diamonds, aes(carat,price, color = cut))
x+geom_point()


x <- ggplot(diamonds, aes(carat,price, color = clarity, size = cut))
x+geom_point()

x <- ggplot(diamonds, aes(carat,price, color = clarity))
x+geom_smooth(se = FALSE)


