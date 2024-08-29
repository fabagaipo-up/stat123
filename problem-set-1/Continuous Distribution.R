# Uniform Distribution
# X~U(200,250)
# p(X>230)
punif(230,200,250,lower.tail = F)
1-punif(230,200,250,lower.tail = T)
# 20th percentile
qunif(0.2,200,250)

# X~U(15,60)
# p(X<=30)
punif(30,15,60,lower.tail = T)
# p(X>40)
punif(40,15,60,lower.tail = F)
1-punif(40,15,60,lower.tail = T)
# (c+d)/2 - Mean
(15+60)/2
# (d-c)^2/12 - Variance
(60-15)^2/12

# X~(100,1600)
# p(778<=X<=834) =  p(X<=834)-p(X<=778)
pnorm(834,800,40,lower.tail = T) - pnorm(778,800,40,lower.tail = T)
pnorm(17/20,0,1,lower.tail = T) - pnorm(-11/20,0,1,lower.tail = T)