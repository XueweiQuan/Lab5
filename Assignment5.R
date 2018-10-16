
# Q1
num6 <- function(n, m){
  process <- replicate(n,
                       {
                         a <- sample(1:6, size = m, replace = T) 
                         b <- length(which(a == 6))
                         ifelse(b > 0, 1, 0)
                       })
  return(sum(process)/n)
} 

num6(1000, 4)
num6(10000, 4)


# Q2
min <- function(x){
  a <- x[1]
  for(i in 2:length(x)){
    if (x[i] < a){
      a <- x[i]
    }
  }
  b <- which(x == a)
  return(list(min = a, index = b))
}

