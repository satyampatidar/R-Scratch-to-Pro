# Flow diagrams sanki and alluvial
#Flow and topologies are very good in networkD3 package
#Dosent work with ggplot2
#Alluvial runs with ggplot2

library(networkD3)
URL <- paste0(
  "https://cdn.rawgit.com/christophergandrud/networkD3/",
  "master/JSONdata/energy.json")
Energy<-jsonlite::fromJSON(URL)
nodes<-Energy$nodes
links<-Energy$links
#View nodes data frame
head(nodes)
#view links in data frame
head(links)
sankeyNetwork(Links = Energy$links, Nodes = Energy$nodes, Source = "source",
              Target = "target", Value = "value", NodeID = "name",
              units = "TWh", fontSize = 12, nodeWidth = 30)
