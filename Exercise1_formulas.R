#Exercise 1
module <- function(ID){
  return(ID%%8)
}
module(22346902)
#Exercise 1.1 (Odevity)
number =3
if (number %%2==0){
  print('This is an even number')
} else {
    print('This is an odd number')
}
#Exercise 1.2 (Maximum)
x = 5
y = 7
if (x>=y) {
  paste0(x, ' is the maximum value')
}else {
  paste0(y, ' is the maximum value')
}
#Exercise 1.3 (Summation)
M <- c(11,12,14,15,17)
total <- 0
for (val in M) {
  total <- total + val 
}
paste0('The sum of the numbers is:', total)
#Exercise 1.4 (Average)
N <- c(7,10,14,16,20)
sum <- 0
for (val in N) {
  sum <- sum + val 
}
length(N)
average = sum(N)/length(N)
paste0 ('The mean of the numbers is:', average)
#Exercise 1.5 (Factorial)
input <- 13
factorial <- 1
if (input<0) {
  print('Not Available')
} else if (input==0) {
  print ('The factorial of 0 is 1')
} else {
  for (i in 1:input){
    factorial <- factorial*i}
     print(paste0('The factorial of ', input ,' is ', factorial))
  }
#Exercise 1.6 (Fibonacci)
n <- 37 
fib1 <- 0
fib2 <- 1
while (fib2 < n) {
  past_fib_number <- fib2
  fib2 <- fib1 + fib2
  fib1 <- past_fib_number
}
if (abs(n - fib1) <= abs(n - fib2)) {
  closest <- fib1
} else {
  closest <- fib2
}
print(paste0("The closest Fibonacci number to ", n, " is ", closest))
#Exercise 1.7 (Pyramid Problem)
pyramid <- function(n) {
  for (i in 1:n) {
    stars<- paste(rep('*', i), collapse = ' ')
    spaces <- strrep(' ', n - i)
    print (paste0(spaces, stars))
  }
}
pyramid(7)
#Exercise 1.8 (Diamond problem)
print_diamond <- function(n) {
  for (i in 1:n) {
    stars <- paste(rep('*', 2*i - 1), collapse = '')
    spaces <- strrep(' ', n - i)
    print(paste0(spaces, stars))
  }
  for (i in (n-1):1) {
    stars <- paste(rep('*', 2*i - 1), collapse = '')
    spaces <- strrep(' ', n - i)
    print(paste0(spaces, stars))
  }
}
print_diamond(7)
