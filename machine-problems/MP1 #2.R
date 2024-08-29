# Number 2 in Machine Problems - STAT 123 Lab A1

# We get the mathematical mean/epectation and mathematical variance of the tetrahedron toss to   
# compare them with the simulated values of the various tosses together with their absolute error.
math_m <- 1*(1/4) + 2*(1/4) + 3*(1/4) + 4*(1/4)
math_m
math_m2 <- ((1)^2)*(1/4) + ((2)^2)*(1/4) + ((3)^2)*(1/4) + ((4)^2)*(1/4)
math_m2
math_v <- (math_m2) - ((math_m)^2)
math_v

# For every 10, 100, 10000, 100000 tosses we get the simulated expectation and variance of each as 
# as well as get the absolute error of these values with their mathematical counterparts.
# Before running the program, we set a seed in order to keep our simulated values consistent throughout 
# to make it easier for us to transfer all the values in the table for comparison
set.seed(2000)
toss1 <- sample(1:4, 10, replace=TRUE)
toss1
mean(toss1)
abs(mean(toss1) - math_m)
var(toss1)
abs(var(toss1) - math_v)

set.seed(2001)
toss2 <- sample(1:4, 100, replace=TRUE)
toss2
mean(toss2)
abs(mean(toss2) - math_m)
var(toss2)
abs(var(toss2) - math_v)

set.seed(2002)
toss3 <- sample(1:4, 10000, replace=TRUE)
toss3
mean(toss3)
abs(mean(toss3) - math_m)
var(toss3)
abs(var(toss3) - math_v)

set.seed(2003)
toss4 <- sample(1:4, 100000, replace=TRUE)
toss4
mean(toss4)
abs(mean(toss4 - math_m))
var(toss4)
abs(var(toss4) - math_v)

table <- data.frame(
  num_t = c(10,100,10000,100000),
  sim_m = c(2.3,2.59,2.483,2.50012),
  sim_v = c(1.344444,1.355455,1.259837,1.255573),
  abs_m = c(0.2,0.09,0.017,0.00012),
  abs_v = c(0.9444444,0.1054545,0.009836984,0.005572541)
)
result <- data.frame(table$num_t,table$sim_m,table$sim_v,table$abs_m,table$abs_v)
print(result)
