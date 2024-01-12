# Working with data

# Set the working directory
setwd("D:/GitHub Projects/R Data Science/R-Data-Science/R Practice for Data Science/04")

getwd()

# Read a tab-delimited data file
cars <- read.table(
  file = "Cars.txt",
  header = TRUE,
  sep = "\t",
  quote = "\""
)

# Peek at the data
head(cars)


# Load the dplyr library
library(dplyr)

# Select a subset of columns 
temp <- select(
  .data = cars,
  Transmission,
  Cylinders,
  Fuel.Economy
)

# Inspect the results
head(temp)


# Filter a subset of rows
temp <- filter(
  .data = temp,
  Transmission == "Automatic"
)

# Inspect the results
head(temp)

# Compute a new column
temp <- mutate(
  .data = temp,
  Consumption = Fuel.Economy * 0.425
  )

# Inspect the results
head(temp)

# Group by a column
temp <- group_by(
  .data = temp,
  Cylinders
)

# Inspect the results
head(temp)

# Aggregate the results by group
temp <- summarise(
  .data = temp,
  Avg_Consumption = mean(Consumption)
)

# Inspect the results
head(temp)

# Arrange the rows in descending order
temp <- arrange(
  .data = temp,
  desc(Avg_Consumption)
)


# Inspect the results
head(temp)

# Convert to a data frame
efficiency <- as.data.frame(temp)

# Inspect the results
print(efficiency)


# Chain methods together
efficiency <- cars %>%
  select(Transmission, Cylinders, Fuel.Economy) %>%
  filter(Transmission == "Automatic") %>%
  mutate(Consumption = Fuel.Economy * 0.425) %>%
  group_by(Cylinders) %>%
  summarise(Avg_Consumption = mean(Consumption)) %>%
  arrange(desc(Avg_Consumption)) %>%
  as.data.frame()

# inspect the results
print(efficiency)

# Save the results to a CSV file
write.csv(
  x = efficiency,
  file = "Efficiency.csv",
  row.names = FALSE
)
