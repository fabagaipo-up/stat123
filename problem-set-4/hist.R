samp.prop <- c()
for (i in 1:1000){
  set.seed(143+i)
  samp <- sample(eai$`Training Program`, 30)
  samp.prop[i] <- count_if('Yes', samp)/30
}

hist(samp.prop, prob = T, main='Sampling Distribution of the Sample Proportion of Trained Managers', xlab='Sample Proportion Estimates', ylab='Probability')

x <- seq(min(samp.prop), max(samp.prop), by = 0.01)
curve(dnorm(x, mean = mean(samp.prop), sd = sd(samp.prop)), col = 'red', add = T, lwd = 2)