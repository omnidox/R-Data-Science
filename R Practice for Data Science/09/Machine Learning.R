# Preductiing with machine learning

#Load the Data
data(iris)

# Set a seed to make randomness reproducible
set.seed(41)

# Randomly sample 100 of 150 row indexes
indexes <- sample(
  x = 1:150,
  size = 100,
)

# Inspect the random indexes
print(indexes)

# Create a training set from indexes
train <- iris[indexes, ]

# Create a test set from the remaining indexes
test <- iris[-indexes, ]

# Load the decision tree package

install.packages("tree")
library(tree)

# What is the species of the iris flower?

# Train a decision tree model based on all predictors
model <- tree(
  formula = Species ~ .,
  data = train
)

# Train a decision tree model using only Petal.Length and Petal.Width
model <- tree(
  formula = Species ~ Petal.Length + Petal.Width,
  data = train
)


# Inspect the model
summary(model)

# Visualize the decision tree model
plot(model)
text(model)

# Load color brewer library
install.packages("RColorBrewer")
library(RColorBrewer)

# Create a color palette
palette <- brewer.pal(n = 3, name = "Set2")

# Create a scatterplot colored by species.
plot(
  x = iris$Petal.Length,
  y = iris$Petal.Width,
  pch = 19,
  col = palette[as.numeric(iris$Species)],
  main = "Iris Petal Length vs. Width",
  xlab = "Petal Length (cm)",
  ylab = "Petal Width (cm)"
)

# Plot the decision boundaries
partition.tree(
  tree = model,
  label = "Species",
  add = TRUE,
)


# What is the prediction Accuracy? 

# Predict with the model
predictions <- predict(
  object = model,
  newdata = test,
  type = "class"
)

# Create a confusion matrix
table(
  x = predictions,
  y = test$Species
)

# Load the caret package
install.packages("caret")
library(caret)

# Evaluate the prediction results
confusionMatrix(
  data = predictions,
  reference = test$Species
)

# Save the tree model
save(model, file = "Tree.RData")
