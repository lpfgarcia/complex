complex
=========

This project is the code used to the Meta-Learning (MtL) evaluation of the ICPR 2018 paper "An updated analysis of complexity measures for classification problems". The experiments are divided in two steps. The first is related to the base-level and the second to the meta-level performance. To run the experiment we need some R packages and the [ECoL](https://github.com/SmartDataAnalytics/ECoL) library.

## Technical Requirements

R version 3.4.3 -- "Kite-Eating Tree"
Packages: caret, ECoL, e1071, foreign, kknn, randomForest, RWeka, ggplot2

```r

install.packages(c("caret", "e1071", "foreign", "kknn", 
  "randomForest", "RWeka", "ggplot2"))

if(!require("devtools")) {
  install.packages("devtools")
}

devtools::install_github("SmartDataAnalytics/ECoL")

```

### Datasets

A summary of the datasets used in this project can be found [here]()

## Base-level

The base-level folder is responsable to extract the complexity measures from the [datasets](https://github.com/lpfgarcia/complex/tree/master/source/base/datasets). To extract the complexity measure and the classification performance over 10-fold cross-validation, execute the run.r script.

```r

R CMD BATCH run.r out.log

```

## Meta-level

The meta-level is the responsable to generate the meta-dataset and run the meta-regressors. The database folder contain the .RData files with the complexity measures and the classification perofrmance for each dataset. To extract the MtL performance you need to execute the run.r script.

```r

R CMD BATCH run.r out.log

```

### Contact

Report at [project issues](https://github.com/lpfgarcia/complex/issues).

