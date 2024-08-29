# Let us construct a 2-sided CI with 95% confidence for the population mean (salary).
set.seed(14344)
alpha <- 0.05
samp <- sample(eai$`Annual Salary`, 20)
xbar <- mean(samp)
lb <- xbar-qt(1-alpha/2,19)*sd(samp)/sqrt(20)
ub <- xbar+qt(1-alpha/2,19)*sd(samp)/sqrt(20)
c(lb,ub)
# We are 95% confident that the population mean is inside the interval (49362, 53275.31)

# Let us make 100 CIs
alpha <- 0.05; mu <- mean(eai$`Annual Salary`, 20)
for (i in 1:100){
  set.seed(14344+i)
  samp <- sample(eai$`Annual Salary`, 20)
  xbar <- mean(samp)
  lb <- xbar-qt(1-alpha/2,19)*sd(samp)/sqrt(20)
  ub <- xbar+qt(1-alpha/2,19)*sd(samp)/sqrt(20)
  print(c(lb,ub))
}

alpha <- 0.05; mu <- mean(eai$`Annual Salary`, 20)
boole <- c()
for (i in 1:100000){
  set.seed(14344+i)
  samp <- sample(eai$`Annual Salary`, 20)
  xbar <- mean(samp)
  lb <- xbar-qt(1-alpha/2,19)*sd(samp)/sqrt(20)
  ub <- xbar+qt(1-alpha/2,19)*sd(samp)/sqrt(20)
  if (mu>=lb&mu<=ub){
    boole[i] <- 1
  }else{
    boole[i] <- 0
  }
}
sum(boole)/100000

# Let us construct a 2-sided CI with 99% confidence for the population mean (salary).
set.seed(14344)
alpha <- 0.01
samp <- sample(eai$`Annual Salary`, 20)
xbar <- mean(samp)
lb <- xbar-qt(1-alpha/2,19)*sd(samp)/sqrt(20)
ub <- xbar+qt(1-alpha/2,19)*sd(samp)/sqrt(20)
c(lb,ub)

# Let us construct a 2-sided CI with 95% confidence for the population mean (salary).
set.seed(14344)
alpha <- 0.05
samp <- sample(eai$`Annual Salary`, 40)
xbar <- mean(samp)
lb <- xbar-qnorm(1-alpha/2,0,1)*sd(eai$`Annual Salary`)/sqrt(40)
ub <- xbar+qnorm(1-alpha/2,0,1)*sd(eai$`Annual Salary`)/sqrt(40)
c(lb,ub)
# We are 95% sure that the population mean is inside (49839.83, 52319.01) from 40 samples.

# Let us construct a 2-sided CI with 95% confidence for the population proportion (trained managers).
alpha <- 0.05
set.seed(14344)
samp <- sample(eai$`Training Program`,30)
samp.prop <- count_if('Yes', samp)/30
lb <- samp.prop-qnorm(1-alpha/2,0,1)*sqrt(samp.prop*(1-samp.prop)/30)
ub <- samp.prop+qnorm(1-alpha/2,0,1)*sqrt(samp.prop*(1-samp.prop)/30)
c(lb,ub)
p <- count_if('Yes', eai$`Training Program`)/length(eai$`Training Program`)

for (i in 1:100){
  alpha <- 0.05
  set.seed(14344+i)
  samp <- sample(eai$`Training Program`,30)
  samp.prop <- count_if('Yes', samp)/30
  lb <- samp.prop-qnorm(1-alpha/2,0,1)*sqrt(samp.prop*(1-samp.prop)/30)
  ub <- samp.prop+qnorm(1-alpha/2,0,1)*sqrt(samp.prop*(1-samp.prop)/30)
  print(c(lb,ub))
}