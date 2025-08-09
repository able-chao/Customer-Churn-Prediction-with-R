#Loading & Preparing Dataset01
##Load and Prepare dataset for Random Forest Model

#the 'churn-bigml-80.csv' file for training our model and
#the 'churn-bigml-20.csv' file for testing its performance on unseen data.

train_data <- read.csv("churn-bigml-80.csv")
test_data <- read.csv("churn-bigml-20.csv")
cat("--- Data Loaded Successfully ---\n")
cat("Training data dimensions:", dim(train_data), "\n")
cat("Testing data dimensions:", dim(test_data), "\n\n")

#Convert the Churn (True/False) to a factor (Yes/No) for more descriptive levels
train_data$Churn <- as.factor(ifelse(train_data$Churn, "Yes", "No"))
test_data$Churn <- as.factor(ifelse(test_data$Churn, "Yes", "No"))

#Summary of train_data
summary(train_data)
