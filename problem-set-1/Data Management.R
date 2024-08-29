# Data Management
# bit.ly/Stat123References
is.data.frame(mlr11)
# call a column
mlr11$CRUDE
mean(mlr11$GNP)
mlr11[,1]
summary(mlr11$INTEREST)
# call a row
mlr11[1,]

# create a database
profile <- data.frame(
  students = c('Jeff','Hueben','Julie','Arjay'),
  age = c(20,18,19,20),
  height = c(65,65,60,62),
  eyecolor = c('Dark Brown','Blue','Purple','Black')
)
rownames(profile) <- c('Layahin','Kang','Bacang','Dayanan')
profile$age

# sampling with probability weights
set.seed(1975)
sample(profile$students,1,prob=c(0.4,0.2,0.2,0.2))
 # We will need this in Machine Problem 1

# if-else conditions
# programs that determines if a number is negative or positive
sign <- function(n) {
  if (n>0) {
    print('The number is positive.')
  } else if (n<0){
    print('The number is negative.')
  } else {
    print('The number is zero.')
  }
}
sign(-0.2147632)

# create a program that determines if a number is even or odd
even <- function(n) {
  if (n%%2==0) {
    print('The number is even.')
  } else {
    print('The number is odd')
  }
}
# We will use this in number 1 or possibly 3

# loops
# for loop
# create a loop that will determine the signs of every number in the vector
x <- c(3,0,-2,1,2,3,5,6,3,0,-9)
for(i in 1:(length(x))) {
  if (x[i]>0) {
    print('positive')
  } else if (x[i]<0){
    print('negative')
  } else {
    print('zero')
  }
}

for(i in 1:(length(x))) {
  if (x[i]%%2==0) {
    print('even')
  } else {
    print('odd')
  }
}

k <- 1 #counter
while(k<=(length(x))) {
  if (x[k]%%2==0) {
    print('even')
    k <- k + 1 # update the value of k
  } else {
    print('odd')
    k <- k + 1
  }
}

# Fibonacci Sequence
# 1,1,2,3,5,8,13,...
# ^^Initial values

# generate the first 20 fibonacci numbers using a for loop
Fibonacci <- function(n) {
  Fib <- c()
  for(i in 1:n) {
    if (i<=2) {
      Fib[i] <- 1
    } else {
      Fib[i] <- Fib[i-1]+Fib[i-2]
    }
  }
  return(Fib)
}
Fibonacci(50)

Fibonacci <- function(n){
  k <- n
  while(k<=n)
    if 
}


