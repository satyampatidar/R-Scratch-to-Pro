# basic 3-D Scatter

library(scatterplot3d)

# Raw Graph

with(mtcars,{
  scatterplot3d(x=disp,
                y= wt,
                z = mpg,
                main = "3-D Scatterplot Example1")
})

# Beautifying the Graph

with(mtcars,{
  scatterplot3d(x = disp, y = wt, z = mpg, color = "blue",
                pch = 19,
                type = "h", main = "3-D Scatterplot Example",
                xlab = "Displacement(cu.in.)",
                ylab = "Weight (lb/1000)",
                zlab = "Miles/(US) Gallon")
  
})
