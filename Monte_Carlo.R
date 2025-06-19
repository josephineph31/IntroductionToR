set.seed(42)  
b <- 5
M <- 1
N <- 7777
f <- function(x) exp(-x^2)
x <- runif(N, -b, b)
y <- runif(N, 0, M)
points_in_the_region <- sum(y <= f(x))
cat(paste0("Number of points that fall into the region is ", points_in_the_region))
area_A <- (2*b)*M
area_B <- (points_in_the_region / N) * area_A
cat(paste0("Estimated Area B: ", area_B))
exact_value <- sqrt(pi)
error <- abs(area_B - exact_value)
cat(paste0("Error:", error))
different_N <- c(7,777,7777,77777,777777,7777777,77777777)
errors <- numeric(length(different_N))
results <- data.frame(N = different_N, Area_B = NA, Error = NA)
for (i in seq_along(different_N)) {
  N_i <- different_N[i]
  x_i <- runif(N_i, -b, b)
  y_i <- runif(N_i, 0, M)
  points_in_the_region <- sum(y_i <= f(x_i))
  area_B_i <- (points_in_the_region/ N_i) * (2 * b * M)
  errors_i <- abs(area_B_i - exact_value)
  results$Area_B[i] <- area_B_i
  results$Error[i] <- errors_i
}
print(results)
plot(different_N, results$Error, type = "b", log = "xy", pch = 20, col = "red",
     xlab = "Number of samples (log scale)", ylab = "Error (log scale)",
     main = "Monte Carlo Error vs N")
mean_val <- 8
std_val <- 2
N <- 7777 
new_b <- 1:40
f_new <- function(x) {
  (1 / (sqrt(2 * pi) * std_val)) * exp(-((x - mean_val)^2) / (2 * std_val^2))
}
outcomes <- data.frame(b_i = new_b, Approximate_Integral = NA, Error_Compared_to_1 = NA)
for (i in seq_along(new_b)) {
  current_b_val <- new_b[i] 
  x_i <- runif(N, -current_b_val, current_b_val)
  fx_i <- f_new(x_i)
  approx_integral_i <- mean(fx_i) * (2 * current_b_val) 
  error_new_i <- abs(approx_integral_i - 1)
  outcomes$Approximate_Integral[i] <- approx_integral_i
  outcomes$Error_Compared_to_1[i] <- error_new_i
}
print(outcomes)
plot (new_b, outcomes$Error_Compared_to_1, type = "b", pch = 20, col = "blue",
      xlab = "Value of b", ylab = "Error compared to 1",
      main = "Monte Carlo Error vs b")
plot (new_b, outcomes$Approximate_Integral, type = "b", pch = 20, col = "red",
      xlab = "Value of b", ylab = "Approximate Integral",
      main = "Monte Carlo Integral Approximation vs b")
abline(h = 1, col = "gray", lty = 2) 