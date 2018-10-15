
# Q1
num6 <- function(n){
  process <- replicate(n,
                       {
                         a <- sample(1:6, size = 4, replace = T) 
                         b <- length(which(a == 6))
                         ifelse(b > 0, 1, 0)
                       })
  return(sum(process)/n)
} 

num6(1000)
num6(10000)


# Q2
min <- function(x){
  a <- x[1]
  b <- length(x)
  for(i in 2:length(x)){
    if (x[i] < a){
      a <- x[i]
    }
  }
  return(paste("the smallest element is", a, "and index is", b))
}

