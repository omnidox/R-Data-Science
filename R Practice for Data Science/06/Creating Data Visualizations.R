# setwd()

# Read the csv file
cars <- read.csv("Cars.csv")

# Install the ggplot2 library
install.packages("ggplot2")

# Load the ggplot2 library
library(ggplot2)

# How many cars of each type of transmission? (frequency bar chart)
ggplot(
  data = cars,
  aes(x = Transmission)) +
  geom_bar() +
  ggtitle("Count of Cars by Transmission Type") +
  xlab("Transmission Type") +
  ylab("Count of Cars")

# What does fuel economy look like? (histogram)

ggplot(
  data = cars,
  aes(x = Fuel.Economy)) +
  geom_histogram(
    bins = 10) +
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg)") +
  ylab("Count of Cars") +
  theme(plot.title = element_text(hjust = 0.5))

# What does fuel economy look like? (density plot)
ggplot(
  data = cars,
  aes(x = Fuel.Economy)) +
  geom_density() +
  ggtitle("Distribution of Fuel Economy") +
  xlab("Fuel Economy (mpg)") +
  ylab("Density") +
  theme(plot.title = element_text(hjust = 0.5))

# How do cylinders and fuel economy relate? (scatterplot)
ggplot(
  data = cars,
  aes(x = Cylinders,
      y = Fuel.Economy)) +
  geom_point() +
  ggtitle("Fuel Economy by Number of Cylinders") +
  xlab("Number of Cylinders") +
  ylab("Fuel Economy (mpg)") +
  theme(plot.title = element_text(hjust = 0.5))
 