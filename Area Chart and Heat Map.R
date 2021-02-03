#Area Chart

ggplot(w,aes(tfr))+geom_area(stat = "bin", bins = 30, fill = "steelblue")


#HeatMap

ggplot(w,aes(le,tfr))+geom_raster(aes(fill = pop2012))