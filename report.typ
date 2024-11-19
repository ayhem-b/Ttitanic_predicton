
  #import "Class.typ": *

#show: ieee.with(
  title: [#text(smallcaps("Predecting The survival Of Titanic Passengers"))],
  
  abstract: [
   This project explores machine learning techniques to predict Titanic passenger survival using demographic and socioeconomic data. Logistic regression, K-Nearest Neighbors (KNN), and K-means clustering were applied to analyze the dataset. After preprocessing and feature engineering, the models were evaluated using accuracy and F1-score.
   
    Results showed that \[mention the best-performing model\] provided the most accurate predictions. This study highlights the effectiveness of machine learning in predictive analytics and decision-making.
  ],
  
  authors:
  (
    (
      name: "Ayhem Belkhamsa",
      department: [Dept. of EE],
      organization: [ISET Bizerte --- Tunisia],
      profile: "ayhem-b",
    ),
  ))
  // index-terms: (""),

  = *Introduction*
  The Titanic disaster of 1912 remains one of history's most infamous maritime tragedies. This project aims to predict passenger survival using machine learning models based on demographic and socioeconomic data from the Titanic dataset. By employing logistic regression, K-Nearest Neighbors (KNN), and K-means clustering, we analyze key factors influencing survival outcomes. The study highlights the potential of predictive analytics in understanding historical events and making data-driven decision

  #figure(
  
        image("Images/Titanic.png", width: 80%, fit: "contain"),
       caption: [Titanic ship],
    
)
 
= *Coding Part*
== *Importing librarys*
```py
import numpy as np
np.set_printoptions(precision=3)
import pandas as pd
import matplotlib.pyplot as plt
%matplotlib inline 
```

== *Importing the data*
```py
train_df = pd.read_csv('../titanic_Data/train.csv')

```
== *Cleaning & Data preparation*
=== Data info 
```md 
<class 'pandas.core.frame.DataFrame'>
RangeIndex: 891 entries, 0 to 890
Data columns (total 12 columns):
 #   Column       Non-Null Count  Dtype  
---  ------       --------------  -----  
 0   PassengerId  891 non-null    int64  
 1   Survived     891 non-null    int64  
 2   Pclass       891 non-null    int64  
 3   Name         891 non-null    object 
 4   Sex          891 non-null    object 
 5   Age          714 non-null    float64
 6   SibSp        891 non-null    int64  
 7   Parch        891 non-null    int64  
 8   Ticket       891 non-null    object 
 9   Fare         891 non-null    float64
 10  Cabin        204 non-null    object 
 11  Embarked     889 non-null    object 
dtypes: float64(2), int64(5), object(5)
memory usage: 83.7+ KB
```

by looking to the output above we can know that the *Training Data* has
- 891 examples
- 10 features
- 1 target (survived)
- some missing datain *Age* , *Cabin* & *Embarked*

```py
train_df.head(9)
```
  #figure(
  
        image("Images/data_frame.png", width: 100%, fit: "contain"),
       caption: [First 9 examples],
    
)



