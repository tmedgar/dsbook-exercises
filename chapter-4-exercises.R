# Chapter 4 Exercises

# Question 1
x <- c(1,2,-3,4)

if(all(x>0)){
  print("All positives")
} else{
  print("Not all positives")
}

# Question 2
x <- c(TRUE,FALSE)
all(!x)

# Question 3
library(dslabs)
data(murders)
new_names <- ifelse(nchar(murders$state)>8, murders$abb, murders$state)
print(new_names)

# Question 4
sum_n <- function(n){
  sum(1:n)
}
sum_n(5000)

# Question 5
altman_plot = function(x,y){
  plot(x+y, y-x)
}
x <- c(1,2,3,4,5)
y <- c(2,4,6,8,10)
altman_plot(x,y)

# Question 6
x <- 3
my_func <- function(y){
  x <- 5
  y+5
}
print(x)

# Question 7
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
compute_s_n(10)

# Question 8
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
s_n <- vector("numeric", 25)
for (i in 1:25) {
  s_n[i] <- compute_s_n(i)
}
print(s_n)

# Question 9
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
s_n <- sapply(1:25, compute_s_n)
print(s_n)

# Question 10
library(purrr)
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
s_n <- map_dbl(1:25, compute_s_n)
print(s_n)

# Question 11
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
n <- 1:25
s_n <- sapply(n, compute_s_n)
plot(n,s_n)

# Question 12
compute_s_n <- function(n){
  x <- 1:n
  sum(x^2)
}
n <- 1:25
s_n <- sapply(n, compute_s_n)
identical(s_n, n*(n+1)*(2*n+1)/6)
