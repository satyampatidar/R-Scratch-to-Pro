
# Loading library
library(ggplot2)

# Checking Data
data("diamonds")

# Analysing the columns with mean, median, itemwise, Quarterwise
summary(diamonds)
View(diamonds)
?diamonds

# Loading Dimensions
dim(diamonds)


# This DF contains 53940 round cut diamonds.
# There are 10 variable all are in lowercases.
# 3 Variables cut, color and clarity are ordered factor arranges in the categorical values in low to high rank order.
# 6 Variables are in numeric structure carat, depth, table, x, y, z
# 1 Variable in integer structure that is price.


# Plot with legend on the right side gives clarity about each diamond
x <- ggplot(diamonds, aes(carat,price, color = clarity))
x+geom_point()
# Layer used

x <- ggplot(diamonds, aes(carat,price, color = cut))
x+geom_point()


x <- ggplot(diamonds, aes(carat,price, color = clarity, size = cut))
x+geom_point()

x <- ggplot(diamonds, aes(carat,price, color = clarity))
x+geom_smooth(se = FALSE)


# Histograms

y <- ggplot(diamonds, aes(x = diamonds$price))
y+geom_histogram()

# To avoid warning
y <- ggplot(diamonds, aes(x = price))
y+geom_histogram()

y <- ggplot(diamonds, aes(x = price, fill = clarity))
y+geom_histogram()

y <- ggplot(diamonds, aes(x = price, fill = cut))
y+geom_histogram()

y <- ggplot(diamonds, aes(x = price))
y+geom_density()

y <- ggplot(diamonds, aes(x = price, color = cut))
y+geom_density()

# Box Plot

z <- ggplot(diamonds, aes(x = color, y = price))
z+geom_boxplot()