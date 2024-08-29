#1

#2 lambda=25, 
pgamma(70,3,1/75,lower.tail = F)

#3 E[X] = 20 min ; Std(X) = 10 min
#a.
n = 4
lambda = 5
#b.
pgamma(15,4,1/5,lower.tail = T)
#4

#5
pgamma(20,)
#6
#a. P(Z<1.25)
pnorm(1.25,lower.tail = T)
#b. P(Z<=1.25)
pnorm(1.25,lower.tail = T)
#c. P(Z>1.25)
pnorm(1.25,lower.tail = F)
#d. P(|Z|<=1.25)
pnorm(1.25,lower.tail = T) - (pnorm(-1.25,lower.tail = T))
#e. P(Z<6.0)
pnorm(6.0,lower.tail = T)
#f. P(Z>6.0)
pnorm(6.0,lower.tail = F)