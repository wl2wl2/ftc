data <- read.csv("/home/samuel/git/ftc/data/analysis/cytoscape/demo.csv", head=TRUE, sep=",")
data <- data[order(data$sim, decreasing=TRUE),]
library(ggplot2)


library(Heatplus)

values <- read.csv("/home/samuel/git/ftc/data/analysis/moa_similarities.csv", head=TRUE, sep=",")
values <- as.matrix(values)
rownames(values) <- colnames(values)
heatmap_2(values, scale='none', legend=2, col=palette)

palette <- colorRampPalette(c('#f0f3ff','#0033BB'))(256)

ggplot(data, aes(drugA, drugB, fill = sim)) + geom_tile() + scale_fill_gradient2(low = "blue",  high = "red")