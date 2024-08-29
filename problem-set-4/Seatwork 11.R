#1.a
samp.prop <- c()
for (i in 1:1000){
  set.seed(201902044+i)
  samp <- sample(eai$`Training Program`, 40)
  samp.prop[i] <- count_if('Yes', samp)/40
}

hist(samp.prop, prob = T, main='Sampling Distribution of Trained Managers', xlab='Sample Proportion Estimates', ylab='Probability')

x <- seq(min(samp.prop), max(samp.prop), by = 0.01)
curve(dnorm(x, mean = mean(samp.prop), sd = sd(samp.prop)), col = 'red', add = T, lwd = 2)

#1.b
samp.prop <- c()
for (i in 1:1000){
  set.seed(201902044+i)
  samp <- sample(eai$`Training Program`, 40)
  samp.prop[i] <- count_if('No', samp)/40
}

hist(samp.prop, prob = T, main='Sampling Distribution of Untrained Managers', xlab='Sample Proportion Estimates', ylab='Probability')

x <- seq(min(samp.prop), max(samp.prop), by = 0.01)
curve(dnorm(x, mean = mean(samp.prop), sd = sd(samp.prop)), col = 'blue', add = T, lwd = 2)

#2
popmean <- mean(eai$`Annual Salary`)
salarysd <- sd(eai$`Annual Salary`)

xbar <- c()
for (i in 1:1000){
  set.seed(201902044+i)
  samp <- sample(eai$`Annual Salary`,50)
  xbar[i] <- mean(samp)
}

histoform <- ((sqrt(50)/salarysd)*(xbar - popmean))

hist(histoform, prob = T, main='Annual Salary', xlab='Sample Proportion Estimates', ylab='Probability')
x <- seq(min(xbar), max(xbar), by = 0.01)
curve(dnorm(x, mean = 0, sd = 1), col = 'green', add = T, lwd = 2)

#3.a
set.seed(201902044)
x <- rchisq(1000, 6)
hist(x, prob = T, main='Histogram of x', xlab='Sample Proportion Estimates', ylab='Probability')

curve(dchisq(x, 6), col = 'yellow', add = T, lwd = 2)

#3.b
set.seed(201902044)
x <- rchisq(1000, 7)
plot(x, type = 'l', col= 'pink',main = 'Plot1')

set.seed(201902044)
x <- rchisq(1000, 9)
plot(x, type = 'l', col= 'black',main = 'Plot2')

set.seed(201902044)
x <- rchisq(1000, 12)
plot(x, type = 'l', col= 'violet',main = 'Plot3')
