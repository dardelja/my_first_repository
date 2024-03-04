
# Document Header -----
# My very first introduction to R
# Author: Daniel Ardeljan
# Date: 3/4/2024
# Description: First Lecture Notes CP Bootcamp
# -----

# Introduction ----

3+5
3^43


3 +
  4

3+5

3+5 ; 12-8

6 / 2^2 - 1
(6 / 2)^2 - 1


# FIRST VECTOR
1:6

# Longer vector
23:59


# My first R object
a <- 3
a + 1

die <- 1:6

#Naming Objects:
namesAreCaseSensitive <- 3
namesAreCaseSENSITIVE <- 5
namesAreCaseSENSITIVE = 5

# objects cannot start with a number or special char
1object <- 0
&object <- 0

underscores_or.dots.are.okay <- 10
namesAreCaseSensitive / 2
ls()

NA <- 3
NULL <- 5
TRUE <- 10

# elementwise operations on the die
die
die - 1
double_die <- die  * 2
double_die

die * die
die * double_die

die %*% die #gets the inner product of two vectors
die %o% die #gets the outer product of two vectors

die
probability = rep(1/6, 6)
sum(die * probability)
die %*% probability


# multiplying vectors. R will default to alternating between values in the shorter vector 
# thus the following 2 are equal outcomes:
die * 1:2
die * c(1,2,1,2,1,2)
die * 1:4


# FUNCTIONS ----
round(3.5)
rnorm(1)
factorial(5)
exp(2)
log(100)
log2(16)
log10(120)
rnorm(n = 10, mean = 0, sd = 3)
mean(1:10)


round(mean(1:10))
sample(x = die, 2, replace = TRUE)

roll2 <- function() {
  dice <- sample(1:6, 2, TRUE)
  return(sum(dice))
}


roll3 <- function(die = 1:6) {
  dice <- sample(x = die, 2, TRUE)
  return(sum(dice))
}

roll4 <- function(die) {
  dice <- sample(x = die, 2, TRUE)
  return(sum(dice))
}


# PACKAGES ----
#install.packages("useful")
#if (!require("BiocManager", quietly = TRUE))
#  install.packages("BiocManager")
#BiocManager::install("ComplexHeatmap")

qplot()
ggplot2::qplot()
library(ggplot2)
qplot()
library(tidyverse)

# good practice to call subfunctions of packages with the package name
# sometimes niche packages will have same funciton name as other package subfunctions
# so this prevents hidden errors
library(ComplexHeatmap)
ComplexHeatmap::Heatmap()
dplyr::filter()

x <- c(-1, 1, 3, 2, 0.5, 3, -2, -2.34)
x <- sort(x)
y <- x^3
plot(x,y, type = "b")
qplot(x,y)
qplot(y)


