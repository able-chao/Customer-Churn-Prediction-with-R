#Train Random Forest Model 

set.seed(123)

churn_rf_model <- randomForest(
  formula = Churn ~ .,
  data = train_data,
  ntree = 500,      
  importance = TRUE # Set to TRUE to calculate variable importance
)

print(churn_rf_model)
