library(tidyverse)
library(corrplot)
data <- read.csv(file.choose())

head(data)

hist(data$Age, main = "Distribusi Umur",
     xlab = "Umur", ylab = "Jumlah", col = "#98F5F9")

ggplot(data, aes(x = class, fill = class)) +
  geom_bar() + xlab("Class") + ylab("Jumlah") +
  ggtitle("Rasio Resiko Diabetes")

ggplot(data, aes(x = class, y = Age)) +
  geom_boxplot(fill = "blue", color = "black") +
  labs(title = "Class and Age Relationship",
       x = "Class", y = "Age") +
  theme_minimal()

data$Gender <- ifelse(data$Gender == "Male", 1, 0)
data$weakness <- ifelse(data$weakness == "Yes", 1, 0)
data$sudden.weight.loss <- ifelse(data$sudden.weight.loss == "Yes", 1, 0)
data$visual.blurring <- ifelse(data$visual.blurring == "Yes", 1, 0)
data$class <- ifelse(data$class == "Positive", 1, 0)

corr_column <- c(1, 2, 5, 6, 9)
new_data <- data[, corr_column]
corr <- cor(new_data)
corrplot(corr, method = "square", type = "upper")

library(caret)
library(pROC)

set.seed(123)
trainIndex <- createDataPartition(data$class, p = 0.8,
                                  list = FALSE)
trainData <- data[trainIndex, ]
testData <- data[-trainIndex, ]

Logistic_Regression_Model <- glm(class ~., data = trainData,
                                 family = 'binomial')
summary(Logistic_Regression_Model)

Probability <- predict(Logistic_Regression_Model,
                       testData, type = 'response')
Predict_Class <- ifelse(Probability > 0.5, 1, 0)

Predict_Class <- factor(Predict_Class, levels = c("0", "1"))
Predict_Class <- factor(Predict_Class, levels = c(0, 1),
                        labels = c("NEGATIVE", "POSITIVE"))
testData$class <- factor(testData$class, levels = c(0, 1),
                         labels = c("NEGATIVE", "POSITIVE"))

Confusion_Matrix <- confusionMatrix(as.factor(Predict_Class),
                                    as.factor(testData$class),
                                    positive = "POSITIVE")
Confusion_Matrix

ROC <- roc(testData$class, Probability)
AUC <- auc(ROC)
AUC
