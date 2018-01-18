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
MEASURES = c(ls.overlapping(), ls.neighborhood(), ls.linearity(), 
  ls.dimensionality(), ls.balance(), ls.network())

# regressors
REGRESSORS = c("DWNN", "RF", "SVM", "Random", "Default")
