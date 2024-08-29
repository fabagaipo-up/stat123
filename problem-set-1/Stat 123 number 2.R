#1
combination <- function(n,r) {
  C <- factorial(n)/(factorial(n-r)*factorial(r))
  return(C)
}
#1.a
combination(13,2)*combination(13,5)*combination(26,6)
#1.b
combination(3,2)*combination(4,2) + combination(3,1)*combination(4,3) + combination(3,0)*combination(4,4)

#2
probability <- function(n,N) {
  P <- n/N
  return(P)
}
#2.a
probability(combination(13,2)*combination(13,5)*combination(26,6),combination(52,13))
#2.b
probability(combination(3,2)*combination(4,2) + combination(3,1)*combination(4,3) + combination(3,0)*combination(4,4),combination(7,4))
