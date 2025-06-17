setwd("~/DataScienceTue3")
india <- read.csv('india.csv')
head(india)
dim(india)
india[1,]
mean(india$female)
sum(india$female == 1)
mean(india$water)
mean(india$water[india$female == 1])
mean(india$water[india$female == 0])
mean(india$water[india$female == 1]) - mean(india$water[india$female == 0])
hist(india$water, 
     main = "Distribution of Drinking Water Facilities",
     xlab = "Number of Drinking Water Facilities",
     col = "blue", 
     breaks = 40)
sum(india$water >= 240 & india$water <= 260)
plot(india$water, india$irrigation,
     main = "Water vs Irrigation Facilities",
     xlab = "Drinking Water Facilities",
     ylab = "Irrigation Facilities",
     col = "orange",
     pch = 20)
model <- lm(irrigation ~ water, data = india)
abline(model, col = "purple", lwd = 2)
cor(india$water, india$irrigation)
