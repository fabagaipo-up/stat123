# Note: Standard Deviation is the square root of its variance
# x = 100, N(1,1)
# y = 100, N(5,1)
set.seed(201902044)

x <- rnorm(100, mean = 1, sd = 1)
y <- rnorm(100, mean = 5, sd = 1)
z <- rbind(x,y)

obvz <- sample(z, 200, replace = TRUE)
subset1 <- obvz[1:100]
subset2 <- obvz[101:200]

xbar <- mean(subset1)
ybar <- mean(subset2)
t <- (xbar - ybar)

for(i in 1:3000){
  set.seed(14344+i)
  obvz <- sample(z, 200, replace = TRUE)
  subset1 <- obvz[1:100]
  subset2 <- obvz[101:200]
  
  xbar <- mean(subset1)
  ybar <- mean(subset2)
  
  t[i] <- (xbar - ybar)
}
counter <- c()
for (i in 1:3000){
  set.seed(14345+i)
  if(t[i] > 4){
    counter[i] = 1
  }
}

p <- (sum(counter)/3000)