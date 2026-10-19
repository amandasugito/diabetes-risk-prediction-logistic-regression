# Diabetes Risk Prediction Using Logistic Regression

## 📌 Project Overview

This project develops a logistic regression model to predict early-stage diabetes risk using the Early Stage Diabetes Risk Prediction dataset.

The analysis includes data preparation, exploratory data analysis (EDA), data visualization, logistic regression modeling, and model evaluation.

## 🎯 Project Objectives

- Explore the characteristics and distribution of diabetes risk data.
- Visualize age distribution and the relationship between age and diabetes classification.
- Examine correlations among selected variables.
- Develop a binary logistic regression model.
- Evaluate model performance using a confusion matrix and ROC-AUC.

## 📊 Dataset

The dataset contains 520 observations and 16 predictor attributes related to early-stage diabetes risk, along with one target variable, `class`.

The dataset includes demographic information and symptoms such as age, gender, polyuria, polydipsia, sudden weight loss, weakness, and visual blurring.

**Target variable:**
- `Positive`: Positive diabetes-risk classification.
- `Negative`: Negative diabetes-risk classification.

Source: [UCI Machine Learning Repository — Early Stage Diabetes Risk Prediction Dataset](https://archive.ics.uci.edu/dataset/529/early+stage+diabetes+risk+prediction+dataset)

## ⚙️ Methodology

1. Import the dataset into R.
2. Explore the data structure and summary statistics.
3. Visualize age distribution, class distribution, and the relationship between age and class.
4. Examine correlations among selected variables.
5. Split the data into training (80%) and testing (20%) sets.
6. Build a logistic regression model using `glm()` with a binomial family.
7. Generate class predictions using a probability threshold of 0.5.
8. Evaluate the model using a confusion matrix and ROC-AUC.

## 📈 Evaluation Metrics

The model evaluation includes:

- **Accuracy:** Overall proportion of correct predictions.
- **Sensitivity:** Ability to identify positive cases.
- **Specificity:** Ability to identify negative cases.
- **Balanced Accuracy:** Average of sensitivity and specificity.
- **Kappa:** Agreement between predicted and actual classifications.
- **ROC-AUC:** Ability to distinguish between the two classes.

## 🛠️ Technologies Used

- R
- RStudio
- tidyverse
- corrplot
- caret
- pROC
- Logistic Regression

## 📂 Project Structure

```text
diabetes-risk-prediction-logistic-regression/
├── Diabetes_Logistic_Regression.R
├── diabetes_prediction.csv
└── README.md
```

## 🚀 How to Run

1. Clone or download this repository.
2. Open `Diabetes_Logistic_Regression.R` in RStudio.
3. Install the required packages if they are not already installed:

   ```r
   install.packages(c("tidyverse", "corrplot", "caret", "pROC"))
   ```

4. Run the script.
5. When prompted, select the diabetes dataset CSV file.
6. Review the visualizations, logistic regression summary, confusion matrix, and ROC-AUC output.

## 👩‍💻 Authors

- Amanda Sugito
- Anthony
- Hazel Zaki Adityo
- Marcell Prasetyo
- Satya Darma Padmakumara
- Vanessa Santoso

## ⚠️ Disclaimer

This project was developed for academic purposes as part of a Data Mining and Visualization course. The model is intended for educational analysis and should not be used as a substitute for professional medical diagnosis.
