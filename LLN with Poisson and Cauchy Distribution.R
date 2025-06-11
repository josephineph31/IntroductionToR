#Exercise 5.3
##I chose Poisson as the distribution 
N <- 7777            
lambda <- 4        
samples <- rpois(N, lambda)
sample_means <- cumsum(samples) / (1:N)
plot(1:N, sample_means, type = "l", col = "blue", lwd = 2,
     xlab = "Number of samples (n)",
     ylab = "Sample mean",
     main = paste("LLN Verification: Sample Mean of Poisson(", lambda, ")", sep=""))
abline(h = lambda, col = "red", lwd = 2, lty = 2)
legend("topright", legend = c("Sample Mean", "Population Mean"),
       col = c("blue", "red"), lwd = 2, lty = c(1, 2))
#Exercise 5.4
##5.4.1
b <- 26
x <- seq(-b, b, length.out = 1000)
f_x <- 1 / (pi * (1 + x^2))
plot(x, f_x, type = "l", lwd = 2, col = "blue",
     main = "Cauchy(0,1) PDF",
     xlab = "x", ylab = "f_X(x)")
##5.4.3 to 5.4.5
cauchy_gen <- function(n) {
  U <- runif(n)
  return(tan(pi * (U - 0.5)))
}
N <- 7777
samples <- cauchy_gen(N)
sample_means <- cumsum(samples) / (1:N)
plot(1:N, sample_means, type = "l", col = "blue",
     xlab = "n (number of samples)",
     ylab = "Sample Mean X_n",
     main = "Sample Mean of Cauchy(0,1) vs Sample Size")
abline(h = 0, col = "red", lty = 2) 

