# user-defined functions
range <- function(vector) {
  r <- max(vector)-min(vector)
  return(r)
}
range(c(-1,0,2,5,6,0,1,0,4,5,11,-8,1))

permute <- function(n,r) {
  p <- prod(n:(n-r+1)) or p <- factorial(n)/factorial(n-r)
  return(p)
}
permute(10,4)
