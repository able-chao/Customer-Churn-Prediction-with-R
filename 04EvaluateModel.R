##Evaluate Specific Variables 

# Variable Importance
# Determine which factors the model found most important for predicting churn.
# The plot shows the Mean Decrease in Gini, a measure of how much each variable
# contributes to the homogeneity of the nodes and leaves in the resulting random forest.

varImpPlot(churn_rf_model, main = "Variable Importance for Churn Prediction")


# D. ROC Curve and AUC
# The ROC curve is a graphical plot that illustrates the diagnostic ability of a
# binary classifier system as its discrimination threshold is varied.
# The Area Under the Curve (AUC) is a measure of the model's overall quality.
# An AUC of 1.0 is a perfect model; an AUC of 0.5 is a model with no predictive power.

# Get the predicted probabilities for the "Yes" class
predictions_prob <- predict(churn_rf_model, newdata = test_data, type = "prob")[, "Yes"]

# Create the ROC object
roc_curve <- roc(response = test_data$Churn, predictor = predictions_prob, levels = rev(levels(test_data$Churn)))

# Plot the ROC curve
plot(roc_curve, main = "ROC Curve for Churn Model", print.auc = TRUE)


