# LONGITUDINAL DATA ANALYSIS

vanco <- read.csv("data/vanco.csv")
vanco2 <- vanco[vanco$Name=="Vancomycin Trough",]
require(ggplot2)
g1 <- ggplot(data = vanco2, aes(x = first, y = Value, group = PatID)) + geom_line()
print(g1)
g2 <- g1 + theme_bw() + scale_x_continuous(name = "Draw")
g3 <- g2 + scale_y_continuous(name = "Vancomycin Trough")
g3
