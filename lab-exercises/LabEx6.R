# 1.A
# 64 different computers with the average installation time of 42 minutes with a 95% confidence interval
alpha <- 0.05
xbar <- 42
lb <- xbar-qt(1-alpha/2,63)*5/sqrt(64)
ub <- xbar+qt(1-alpha/2,63)*5/sqrt(64)
c(lb,ub)

# 1.B
# Population mean installation time is 40 minutes.
alpha <- 0.05
xbar <- 42
lb <- xbar-qt(1-alpha/2,63)*5/sqrt(64)
ub <- xbar+qt(1-alpha/2,63)*5/sqrt(64)
c(lb,ub)

xbar <- 40
p <- (pnorm(ub,xbar,5)-pnorm(lb,xbar,5))

# 2.A
# 90% confidence interval
alpha <- 0.10
n <- 3
avgsal <- (30000+50000+70000)/n
lb <- avgsal-qt(1-alpha/2,n-1)*1/sqrt(n)
ub <- avgsal+qt(1-alpha/2,n-1)*1/sqrt(n)
c(lb,ub)

# 2.B
# 10% level of significance, average salary of all entry-level computer engineers is different from $80,000
#Explanation: 
#No, at this level of significance there is no sufficient evidence provided by the data that the average salary of a computer engineer is different from $80,000.

# 2.C
# Construct a 90% confidence interval for the standard deviation of entry-level salaries 
alpha <- 0.10
n <- 3
sd <- 20000
avgsal <- (30000+50000+70000)/n
lb <- sd*sqrt((n-1)/qchisq(alpha/2), n-1)
ub <- sd*sqrt((n-1)/qchisq(1-alpha/2),n-1)
c(lb,ub)

