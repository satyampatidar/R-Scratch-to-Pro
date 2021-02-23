# basic 3-D Scatter

library(scatterplot3d)

# create column indicating point color
mtcars$pcolor[mtcars$cyl == 4] <- "red"
mtcars$pcolor[mtcars$cyl == 6] <- "blue"
mtcars$pcolor[mtcars$cyl == 8] <- "darkgreen"

with(mtcars, {
  s3d <- scatterplot3d(
    x = disp, 
    y = wt, 
    z = mpg,
    color = pcolor, 
    pch = 19, 
    type = "h", 
    lty.hplot = 2, 
    scale.y = .75,
    main = "3-D Scatterplot Example 4",
    xlab = "Displacement (cu. in.)",
    ylab = "Weight (lb/1000)",
    zlab = "Miles/(US) Gallon")
  
})
