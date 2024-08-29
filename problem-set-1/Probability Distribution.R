# Solving probabilities using RStudio
# d -> p(X=x)
# p -> p(X<=x)
# q -> the value of x given p(X=x)

# Disrete uniform distribution
# X~DU(6)
die <- c(rep(1/6,6))
die[3] # probability that the die will land on a 3
# at most 2 = p(1)+p(2)
die[1]+die[2]
# at least 3 = p(3)+p(4)+p(5)+p(6)
sum(die[3:6])

# Binomial, p=2/3, n=5
# X~Bi(5,2/3)
# p(X=2) -> exactly 2
dbinom(2,5,2/3) # probability of getting exactly 2 heads after tossing the coin 5 times
# p(X>=2)
pbinom(2,5,2/3,lower.tail = F) # probability of getting at least 2 heads after tossing the coin 5 times
# p(X<=2)
pbinom(2,5,2/3,lower.tail = T) # probability of getting at most 2 heads after tossing the coin 5 times

# Poisson
# X~Po(7)
# lambda=7
# p(X=0)
dpois(0,7)
# p(X>=3)
ppois(3,7,lower.tail = F)
# p(X<=5)
ppois(5,7,lower.tail = T)
# How many customers should arrive such that the probability is 0.000911882?
qpois(dpois(0,7),7)

# Negative Binomial
# p=2/3, n=1
# p(X=5)
dnbinom(5,1,2/3) # probability that it will take 5 trials to get a head
# p(X>=7)
pnbinom(7,3,2/3,lower.tail = F) # probability that it will take at least 7 tosses to get 3 heads
# p(X<=9)
pnbinom(9,2,2/3,lower.tail = T) # probability that it will take at most 9 tosses to get 2 heads

# Hypergeometric
# X~HG(M=52,K=13,n=13)
# p(X=0)
dhyper(0,13,52-13,13)
# 0 -> no. of spades
# 13 -> no. of no spades
# 52-13 -> no. of not spades
# 13 -> no. of bridge hand
# Exactly 5 hearts
dhyper(5,13,52-13,13)
