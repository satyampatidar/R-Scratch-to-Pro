# Create a heatmap
data(mtcars)
library(superheat)
superheat(mtcars,scale = TRUE)

# sorted heat map
# Dendrogram added

superheat(mtcars,
          scale = TRUE,
          left.label.text.size = 3,
          bottom.label.text.size = 3,
          bottom.label.size = 0.05,
          row.dendrogram = TRUE)

