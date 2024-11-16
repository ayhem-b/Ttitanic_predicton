
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
