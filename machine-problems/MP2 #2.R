# Values of k from Machine Problem 2.1
# (a) = 2
# (b) = 1/(exp(2)-1)
# (c) = 1

# We start the simulation by creating a function sim_a1/a2/a3 
# with n being the number of simulations, this is needed in 
# solving for p(X > 1),the most probable value of X, and
# the probability that X is even.

k1 <- 2
k2 <- 1/(exp(2)-1)
k3 <- 1

sim_a1 <- function(n){
  a1 <- c()
  for (x in seq(1:n)) { # a for loop is used to perform repeatedly the simulation from 1 to the value of n
    fx <- (1/3)^x
    a1 <- c(a1, k1*fx) # arrays (a1, a2, a3) are tasked to find the probability of the simulations
  } # the probability stored in the arrays are then summed up from 2 to the length of their respective arrays
  cat("p(X > 1): ",sum(a1[2:length(a1)]),"\n") # cat function is used in producing outputs in user-defined functions whilst convertint its arguments to character vectors
  max_a1 <- which(a1 %in% max(a1)) # The which() function will return the position of the elements in a logical vector which are TRUE and %in% operator in R, is used to identify if an element belongs to a vector
  cat("most probable value: ", max_a1, "\n") # max function returns the maximum value of a1/a2/a3
  a1 <- c()
  for (x in seq(2,n,2)) { # another for loop is needed to find the probability that X is even by iteration but this time starting with 2
  # the value 2 is added in every iteration making it even
    fx <- (1/3)^x
    a1 <- c(a1, k1*fx)
  } # a function is stored in array to find the probability of each simulation and also calculating the sum of each probability
  cat("p(X is even): ",sum(a1), "\n") 
}

sim_a2 <- function(n){
  a2 <- c()
  for (x in seq(1:n)) {
    fx <- (2^x)/factorial(x)
    a2 <- c(a2, k2*fx)
  }
  cat("p(X > 1): ",sum(a2[2:length(a2)]),"\n")
  max_a2 <- which(a2 %in% max(a2))
  cat("most probable value: ", max_a2, "\n")
  a2 <- c()
  for (x in seq(2,n,2)) {
    fx <- (2^x)/factorial(x)
    a2 <- c(a2, k2*fx)
  }
  cat("p(X is even): ",sum(a2), "\n")
}

sim_a3 <- function(n){
  a3 <- c()
  for (x in seq(1:n)) {
    fx <- (1/2)^x
    a3 <- c(a3, k3*fx)
  }
  cat("p(X > 1): ",sum(a3[2:length(a3)]),"\n")
  max_a3 <- which(a3 %in% max(a3))
  cat("most probable value: ", max_a3, "\n")
  a3 <- c()
  for (x in seq(2,n,2)) {
    fx <- (1/2)^x
    a3 <- c(a3, k3*fx)
  }
  cat("p(X is even): ",sum(a3), "\n")
}

sim_a1(1000)
sim_a2(1000)
sim_a3(1000)