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


with(mtcars, {  s3d <- scatterplot3d( x = disp,  y = wt, 
                                      z = mpg,     color = "blue",     pch = 19,     type = "h",
                                      main = "3-D Scatterplot Example ",   xlab = "Displacement (cu. in.)",
                                      ylab = "Weight (lb/1000)",   zlab = "Miles/(US) Gallon")

# convert 3-D coords to 2D projection
s3d.coords <- s3d$xyz.convert(disp, wt, mpg) 

# plot text with 50% shrink and pl
text(s3d.coords$x, 
     s3d.coords$y,   
     labels = row.names(mtcars),  
     cex = .5, 
     pos = 4)
})

