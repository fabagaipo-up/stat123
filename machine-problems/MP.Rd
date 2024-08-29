# Values of k from Machine Problem 2.1
# (a) = 2
# (b) = 1/(exp(2)-1)
# (c) = 1

a1.func <- function(n){
  a1 <- c()
  for (x in seq(1:n)) {
    k <- 2
    f <- (1/3)^x
    a1 <- c(a1, k*f)
  }
  cat("p(X > 1): ",sum(a1[2:length(a1)]),"\n")
  a1_max <- which(a1 %in% max(a1))
  cat("most probable value: ", a1_max, "\n")
  a1 <- c()
  for (x in seq(2,n,2)) {
    k <- 2
    f <- (1/3)^x
    a1 <- c(a1, k*f)
  }
  cat("p(X is even): ",sum(a1), "\n")
}

a2.func <- function(n){
  a2 <- c()
  for (x in seq(1:n)) {
    k <- 1/(exp(2)-1)
    f <- (2^x)/factorial(x)
    a2 <- c(a2, k*f)
  }
  cat("p(X > 1): ",sum(a2[2:length(a2)]),"\n")
  a2_max <- which(a2 %in% max(a2))
  cat("most probable value: ", a2_max, "\n")
  a2 <- c()
  for (x in seq(2,n,2)) {
    k <- 1/(exp(2)-1)
    f <- (2^x)/factorial(x)
    a2 <- c(a2, k*f)
  }
  cat("p(X is even): ",sum(a2), "\n")
}

a3.func <- function(n){
  a3 <- c()
  for (x in seq(1:n)) {
    k <- 1
    f <- (1/2)^x
    a3 <- c(a3, k*f)
  }
  cat("p(X > 1): ",sum(a3[2:length(a3)]),"\n")
  a3_max <- which(a3 %in% max(a3))
  cat("most probable value: ", a3_max, "\n")
  a3 <- c()
  for (x in seq(2,n,2)) {
    k <- 1
    f <- (1/2)^x
    a3 <- c(a3, k*f)
  }
  cat("p(X is even): ",sum(a3), "\n")
}

