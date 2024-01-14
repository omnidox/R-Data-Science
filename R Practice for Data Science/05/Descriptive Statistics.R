# Creating Descriptive Statistics

# Set Working Directory
setwd("D:/Users/Rafael/Documents/GitHub/R-Data-Science/R Practice for Data Science/05")
getwd()

# Read a CSV data file
cars <- read.csv("Cars.csv")

# Peek at the data
head(cars)

# Create a frequency table
table(cars$Transmission)

# Get the minimum value
min(cars$Fuel.Economy)

# Get the maximum value
max(cars$Fuel.Economy)

# Get the mean value
mean(cars$Fuel.Economy)

# Get the median value
median(cars$Fuel.Economy)

# Get the quartiles (25%, 50%, 75%)
quantile(cars$Fuel.Economy)

# Get the standard deviation
sd(cars$Fuel.Economy)

# Get the total value 
sum(cars$Fuel.Economy)

# Get the Correlation Coefficient
cor(
  x = cars$Cylinders,
  y = cars$Fuel.Economy
  
)

cars$Name <- factor(cars$Name)
cars$Transmission <- factor(cars$Transmission)


# Summarize an entire table
summary(cars)
