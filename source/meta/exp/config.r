# R Code
# Config File
# L. Garcia, A. Lorena, M. de Solto 2017
# Packages and Global Variables

# Packages
require(ECoL)
require(e1071)
require(ggplot2)
require(kknn)
require(randomForest)
require(RColorBrewer)
require(reshape2)

# list of classifiers
CLASSIFIERS = c("ANN", "C4.5", "kNN", "SVM")

# directory
DIR = getwd()

# datasets
files = list.files(paste(DIR, "/database", sep=""), full.names=TRUE)

# complexity measures
MEASURES = c("F1", "F1v", "F2", "F3", "F4", "N1","N2", "N3", "N4", "T1", 
  "LSCAvg", "L1", "L2", "L3", "T2", "T3", "T4", "C1", "C2", "Density", 
  "ClsCoef", "Hubs")

# regressors
REGRESSORS = c("DWNN", "RF", "SVR", "Random", "Default")
