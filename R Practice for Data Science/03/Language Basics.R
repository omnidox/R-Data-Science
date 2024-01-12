# R Language Basics

# Assignment operators

x <- "Hello World!"
Y = "Hello World!"
"Hello World!" -> z

# Implicit printing
print(x)
x

# Creating Variables
# Variable names can contain letters, numbers, periods, and underscores
# Variable names cannot start with a number
# Variable names are case sensitive
# Variable names cannot be reserved words

l <- TRUE
i <- 123L
n <- 1.23
c <- "ABC 123"
d <- as.Date("2014-09-01")

# Displaying Variables
l
i
n
c
d

# Creating a function
f <- function(x) {
  x + 1
}

# Invoking a function
f(2)

# Creating a vector
v <- c(1, 2, 3, 4, 5);
v

# Creating a sequence
s <- 1:5
s

# Creating a matrix
m <- matrix(
  data = 1:6, 
  nrow = 2, 
  ncol = 3)
m

# Creating an array
a <- array(
  data = 1:8, 
  dim = c(2, 2, 2))
a

# creating a list
l <- list(
  vector = c(1, 2, 3),
  matrix = matrix(
    data = 1:4, 
    nrow = 2, 
    ncol = 2),
  array = array(
    data = 1:8, 
    dim = c(2, 2, 2)))
l

l2 <- list(TRUE, 123L, 2.34, "ABC 123")
l2

# Creating a factor using Male and Female
categories <- c("Male" , "Female", "Male" , "Male", "Female")
factor <- factor(categories)
factor
levels(factor)
unclass(factor)

# Creating a data frame for "Cat", "Dog", "Cow" and "Pig" 
# and variables Name, HowMany, and IsPet

df <- data.frame(
  Name = c("Cat", "Dog", "Cow", "Pig"),
  HowMany = c(5, 10, 15, 20),
  IsPet = c(TRUE, TRUE, FALSE, FALSE))
df

# Indexing data frames by row and column
df[1, 2]

# Indexing data frames by row
df[1, ]

# Indexing data frames by column
df[ , 2]
df[["HowMany"]]
df$HowMany

## Subsetting data frames

# Subsetting data frames by row and column
df[c(2, 4), ]

# Subsetting data frames by row
df[2:4, ]

# Subsetting data frames by boolean values
df[c(TRUE, FALSE, TRUE, FALSE), ]

# Subsetting data frames by checking for a value
df[df$IsPet == TRUE, ]

# Subsetting data frames by any values larger than 10
df[df$HowMany > 10, ]

# Subsetting data frames by a Vector of names
df[df$Name %in% c("Cat", "Cow"), ]

# R is a vectorized language
1 + 2
c(1, 2, 3) + c(2, 4, 6)

# Named vs. ordered arguments
m <- matrix(
  data = 1:6, 
  nrow = 2, 
  ncol = 3)

n <- matrix(1:6, 2, 3)

m == n

identical(m, n)

# Installing packages
install.packages("dplyr")

# Loading packages
library(dplyr)

# Viewing help
?data.frame
