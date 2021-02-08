library(ggplot2)

# Scatter plot of hwy vs cyl

p <- ggplot(data = mpg, aes(hwy,cyl))
p+geom_point(alpha = 3, color = "blue", size = 3)

# Scatterplot of class vs drv
p <- ggplot(data = mpg, aes(class, drv))+geom_point()
p+geom_point(alpha = 3, color = "blue", size = 3)
p+geom_jitter()

# A scatterplot is definitely not a helpful showcase of these factors since both
# drv and class are categorical vars. Since categorical vars ordinarily take a few
# qualities, there are a set number of special blends of (x, y) values that can be shown.

ggplot(data = mpg) +  geom_point(mapping = aes(x = displ, y = hwy, color = "blue"))
# Color is worng since it should be outside the bracket
ggplot(data = mpg) +  geom_point(mapping = aes(x = displ, y = hwy)) # Default is Black
ggplot(data = mpg)+geom_point(mapping = aes(x = displ, y = hwy), colour = "blue") #correct
