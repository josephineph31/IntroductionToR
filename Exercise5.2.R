#5.2.1
u <- 7
sigma <- 2
N <- 666
random <- rnorm(N, mean = u, sd = sigma)
random
#5.2.2
curve(dnorm(x, mean = u, sd = sigma), from = u - 4*sigma, to = u + 4*sigma,
      col = "blue", lwd = 2, ylab = "Density", main = "Density of N(7, 2²)")
#5.2.3
plot_histogram <- function(bins) {
  hist(random, breaks = bins, probability = TRUE,
       col = "orange", border = "white",
       main = paste("Histogram with", bins, "bins"),
       xlab = "X", ylab = "Density")
  curve(dnorm(x, mean = u, sd = sigma), 
        from = u - 4*sigma, to = u + 4*sigma,
        add = TRUE, col = "blue", lwd = 2)
}
par(mfrow = c(2, 2))  
plot_histogram(10)
plot_histogram(20)
plot_histogram(30)
plot_histogram(50)
#Overall, the histograms with different bins all follow the density function. 
#However, that might be because N is large enough. 