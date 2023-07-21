# Sleep-Disorder-Prediction
## Project Description

In this data analytics portfolio project, I embarked on an intriguing exploration of the essential yet enigmatic aspect of our lives - sleep. The restless nights, fatigue, and yearning for restorative slumber prompted me to delve into the myriad of factors that impact our sleep but often go unnoticed amidst the bustling realm of daily life.

[The dataset](https://www.kaggle.com/datasets/uom190346a/sleep-health-and-lifestyle-dataset), discovered on Kaggle, instantly captivated my curiosity, compelling me to uncover its hidden insights. This summary presents the key findings and highlights of my data analytics project. For detailed analysis and the complete R code, please refer to the repository provided above.

## Data Description

The dataset comprises 374 rows and 13 columns, and fortunately, it contains no missing values. Its variables include unique IDs for individuals, gender, age, occupation, sleep duration, sleep quality, physical activity level, stress levels, BMI category, blood pressure, heart rate, daily steps, and the presence or absence of sleep disorders.

## Data Exploration

Our primary focus was on the variable "Sleep Disorder." The objective was to accurately identify individuals with sleep disorders using the available dataset variables. Initially, this variable had three categories: Insomnia, None, and Sleep Apnea. However, to enhance model robustness, we simplified the categories to "Yes" (indicating the presence of a sleep disorder) and "No" (indicating the absence of a sleep disorder) due to the dataset's size.

To gain a comprehensive understanding, I conducted Exploratory Data Analysis (EDA) and visualization, providing valuable insights into the dataset's patterns and trends. For a detailed exploration, please refer to the R notebook in the provided repository.

## Modeling

Employing k-fold cross-validation, I developed a logistic regression model with the aim of accurately identifying individuals with sleep disorders. The notebook provides in-depth details about the model's development.

The final model achieved an impressive overall accuracy of 92%. Additionally, I made a pivotal change in the model's feature, replacing "daily steps" with "physical activity levels," resulting in a slight performance improvement and enhancing the interpretability of the model's coefficients.

This data analytics project offers a glimpse into the intricate realm of sleep disorders, providing valuable insights for identifying individuals in need of attention and possible interventions. For a comprehensive understanding and the intricacies of the analysis, please explore the R notebook in the repository above.
