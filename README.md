# Indian-Liver-Patient-Classification

### Need for Liver Classification

The project involves the classification of Indian liver patients based on medical data. It utilizes machine learning techniques to distinguish between patients with liver disease and healthy individuals, focusing on predictive modeling to improve diagnostic accuracy.

## Dataset Description

- Dataset is available at [here](https://archive.ics.uci.edu/dataset/225/ilpd+indian+liver+patient+dataset)
- The dataset comprises 583 patient records collected from the NorthEast of Andhra Pradesh, India.
- Out of the 583 patient records, 441 are male, and 142 are female.
- 416 patients diagnosed are with liver disease and 167 atients without liver disease.
- The selector varibale shows the class label: '1' for diease; '2' for healthy.
- Ramana, B. & Venkateswarlu, N. (2022). ILPD (Indian Liver Patient Dataset). UCI Machine Learning Repository. https://doi.org/10.24432/C5D02C.
  
| Variable Name | Role    | Type      | Description                                             |
|---------------|---------|-----------|---------------------------------------------------------|
| Age           | Feature | Integer   | Age of the patient. Any patient whose age exceeded 89 is listed as being of age "90". |
| Gender        | Feature | Binary    | Gender of the patient                                   |
| TB            | Feature | Continuous| Total Bilirubin                                         |
| DB            | Feature | Continuous| Direct Bilirubin                                        |
| Alkphos       | Feature | Integer   | Alkaline Phosphotase                                    |
| Sgpt          | Feature | Integer   | Alamine Aminotransferase                                |
| Sgot          | Feature | Integer   | Aspartate Aminotransferase                              |
| TP            | Feature | Continuous| Total Proteins                                          |
| ALB           | Feature | Continuous| Albumin                                                 |
| A/G Ratio     | Feature | Continuous| Albumin and Globulin Ratio                              |




## Exploratory Data Analysis


## Modeling

The prediction task is to determine whether a patient suffers from liver disease based on the information about several biochemical markers, including albumin and other enzymes required for metabolism.
- Baseline Model (Dummy Classifier)
- Logistic Regression
- KNN
- Random Forest
- Logistic Regression with Oversmapling (hypertuned)
- Bagging Classifier: LogisticRegression estimator
- Baseline XGBoost
- Tuned XGB
- Voting Classifier

## Conclusion

Using SHAP, we found out: 
- Feature 7: TP & Feature 8: ALB have highest positive contirbution towards the overall model performance. 
- Feature 5: Sgpt has the highest negative contribution towards the overall model performance.
- Which means TP:Total Phosphate, ALB:Albumin, Sgpt:serum glutamate pyruvate transaminase are the most important factors in the determination of Liver Disease
