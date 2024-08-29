# install the package expss
# let's now plot a standard normal distribution

x <- seq(-3,3, by = 0.01)
y <- dnorm(x, mean = 0, sd = 1)
plot(x, y, type = 'l', col= 'red',main = 'Standard Normal Distribution')

# from a sample of 30 managaers, make a sampling distribution of the proportion of managers who said Yes (who took a training program)
# suppose we do the sampling 1000 times

samp.prop <- c()
for (i in 1:1000){
  set.seed(143+i)
  samp <- sample(eai$`Training Program`, 30)
  samp.prop[i] <- count_if('Yes', samp)/30
}

xsp <- seq(min(samp.prop), max(samp.prop), by = 0.01)
ysp <- dnorm(xsp, mean = mean(samp.prop), sd = sd(samp.prop))
plot(xsp, ysp, type = 'l', main = 'Sampling Distribution of the Sample Proportion')

hist(samp.prop, prob = T, main='Sampling Distribution of the Sample Proportion of Trained Managers', xlab='Sample Proportion Estimates', ylab='Probability')

x <- seq(min(samp.prop), max(samp.prop), by = 0.01)
curve(dnorm(x, mean = mean(samp.prop), sd = sd(samp.prop)), col = 'red', add = T, lwd =)

# make a sampling distribution of the sample proportion for No, out of 50 samples, iterated 1000 times, with seed 143

samp.prop <- c()
for (i in 1:1000){
  set.seed(143+i)
  samp <- sample(eai$`Training Program`, 50)
  samp.prop[i] <- count_if('No', samp)/50
}

xsp <- seq(min(samp.prop), max(samp.prop), by = 0.01)
ysp <- dnorm(xsp, mean = mean(samp.prop), sd = sd(samp.prop))
plot(xsp, ysp, type = 'l', main = 'Sampling Distribution of the Sample Proportion', ylab = 'Frequency', xlab = 'Sample Proportion estimates')

# sampling distribution of average salary
xbar <- c()
for (i in 1:1000){
  set.seed(201902044+i)
  samp <- sample(eai$`Annual Salary`,30)
  xbar[i] <- mean(samp)/30
}
xsp <- seq(min(xbar), max(xbar), by = 0.01)
ysp <- dnorm(xsp, mean = mean(xbar), sd = sd(xbar))
plot(xsp, ysp, type = 'l', main = 'Sampling Distribution of the Sample Proportion', ylab = 'Frequency', xlab = 'Average Salary estimates')
