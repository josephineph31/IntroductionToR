setwd ('C:/Users/LENOVO/OneDrive/Tài liệu/DataScienceTue3')
voting <- read.csv('voting.csv')
#Histogram of the birth variable
hist(voting$birth,
     main = 'Distribution of voter birth years',
     xlab = 'Year of Birth',
     ylab = 'Frequency(Number of people)',
     col = 'skyblue',
     border = 'black',
     breaks = 30)
abline(v = mean(voting$birth), col = 'orange', lwd = 3, lty = 3)   
abline(v = median(voting$birth), col = 'green', lwd = 3, lty = 3)
legend("topleft", legend=c("Mean", "Median"), col=c("orange", "green"),
       lty=c(3,3), lwd=3, bty="n")
#Scatter plot for x,y,z
x <- c(-5, -4, -3, -2, -1, 0, 1, 2, 3, 4, 5)
y <- c(25.56, 16.89, 9.07, 4.48, 1.04, 0.94, 1.21, 4.96, 9.48, 16.99, 25.43)
z <- c(-12.05, -9.91, -7.64, -5.65, -3.53, -1.68, 0.28, 2.03, 4.08, 6.16, 8.17)
par(mfrow = c(1,2))
plot(x,y,
     main = 'Scatter plot for x and y',
     xlab = 'x',
     ylab = 'y',
     pch = 20,
     col = 'red')
grid()
#Possible Relationship: y = x^2
plot(x,z,
     main = 'Scatter plot for x and z',
     xlab = 'x',
     ylab = 'z',
     pch = 20,
     col = 'blue')
grid()
relationship <- lm(z ~x)
relationship
abline(relationship, col = 'pink', lwd = 2)
#Possible Relationshop: z = -1.795 + 1.997 * x