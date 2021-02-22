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


