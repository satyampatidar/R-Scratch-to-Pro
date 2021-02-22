# Mosaic Plot

# Loading Libraries
library(ggplot2)
library(vcd)

# input data
library(readr)
titanic <- read_csv("titanic.csv")

# create a table
tbl <- xtabs(~Survived + Pclass + Sex, titanic)
ftable(tbl)

# Create a mosaic plot

mosaic(tbl, main = "Titanic Data")

# Colourful Plot

mosaic(tbl, 
       shade = TRUE,
       legend = TRUE,
       labeling_args = list(set_varnames = c(Sex = "Gender",
                                             Survived = "Survived",
                                             Class = "Passenger Class")),
       set_labels = list(Survived = c("No", "Yes"),
                         Class = c("1st", "2nd", "3rd", "Crew"),
                         Sex = c("F", "M")),
                         main = "Titanic data")
