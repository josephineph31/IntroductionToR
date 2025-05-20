#Exercise 2.5.1:
##Table a:
result_a <- dataset_a[, c(2, 3, 5)]
result_a
##Table b:
result_b <- dataset_b[c(1, 2, 4, 6), c(1, 2, 4, 5)]
result_b
##Table c:
result_c <- dataset_c[dataset_c[, 2] != 'A', 2]
result_c
##Table d:
result_d <- dataset_d[dataset_d[, 2] == 'A' & dataset_d[,4 ] == 'yes', ]
result_d
#Exercise 2.5.2:
voting <- read.csv('voting.csv')
selected <- voting[((voting$voted != 1)|(voting$message == 'yes'))& voting$birth >= 1987,]
selected