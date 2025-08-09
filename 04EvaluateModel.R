##Evaluate Specific Variables 

# Variable Importance
varImpPlot(churn_rf_model, main = "Variable Importance for Churn Prediction")


# Get the predicted probabilities for the "Yes" class
predictions_prob <- predict(churn_rf_model, newdata = test_data, type = "prob")[, "Yes"]

# Create the ROC object
roc_curve <- roc(response = test_data$Churn, predictor = predictions_prob, levels = rev(levels(test_data$Churn)))

# Plot the ROC curve
plot(roc_curve, main = "ROC Curve for Churn Model", print.auc = TRUE)


