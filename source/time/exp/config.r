# R Code
# Config File 
# L. Garcia, A. Lorena, M. de Solto 2017
# Packages and Global Variables

# Packages
require(caret)
require(ECoL)
require(e1071)
require(foreign)
require(kknn)
require(randomForest)
require(RWeka)

# list of classifiers
CLASSIFIERS = c("ANN", "C4.5", "kNN", "SVM")

# directory
DIR = getwd()

# datasets
files = list.files(paste(DIR, "/datasets", sep=""), full.names=TRUE)

# number of folds
FOLDS = 10

# mlp classifier
MLP = make_Weka_classifier("weka/classifiers/functions/MultilayerPerceptron")
