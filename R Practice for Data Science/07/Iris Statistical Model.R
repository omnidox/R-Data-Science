#load csv file
#iris <- read.csv("Iris.csv", header = TRUE)

# How are petal length and petal width related? 

# Load the data
data(iris)

# Peak at data 
head(iris)

# Create a scatterplot of petal length vs. petal width
plot(
  x = iris$Petal.Length, 
  y = iris$Petal.Width, 
  xlab = "Petal Length (cm)", 
  ylab = "Petal Width (cm)", 
  main = "Iris Petal Length vs. Iris Petal Width"
)

# Create a linear regression model
model <- lm( 
  formula = Petal.Width ~ Petal.Length, 
  data = iris)

# Summarize the model
summary(model)

# Draw a regression line on the plot using predict (more flexible)
lines(
  x = iris$Petal.Length, 
  y = predict(model), 
  col = "red",
  lwd = 3
)

# Draw a regression line on the plot using fitted (less flexible)
lines(
  x = iris$Petal.Length, 
  y = model$fitted, 
  col = "red",
  lwd = 3
)

# Get Correlation Coefficient
cor(
  x= iris$Petal.Length,
  y= iris$Petal.Width
)


#How can we predict new petal width values?

# Predict new values from the model
predict(
  object = model, 
  newdata = data.frame(
    Petal.Length = c(2, 5, 7))
  )


