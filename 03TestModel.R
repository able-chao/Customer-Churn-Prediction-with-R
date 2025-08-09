##Test Model 03

predictions <- predict(churn_rf_model, test_data)

predictions <- factor(predictions, levels = levels(test_data$Churn))

##Create a confusion Matrix to evaluate the accuracy of the model
confusion_matrix <- confusionMatrix(
  data = predictions,
  reference = test_data$Churn,
  positive = "Yes" # Specify the "positive" class
)

print(confusion_matrix)
