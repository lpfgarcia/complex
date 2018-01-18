# R Code
# Regressors
# L. Garcia, A. Lorena, M. de Solto 2017
# Supervised Learning - Regressors

DWNN <- function(tech, tran, test) {
  model = kknn(tech, tran, test, kernel="gaussian")
  model$fitted.values
}

RF <- function(tech, tran, test) {
  model = randomForest(tech, tran)
  as.numeric(predict(model, test))
}

SVM <- function(tech, tran, test) {
  model = svm(tech, tran, scale=TRUE, type="eps-regression", kernel="radial")
  as.numeric(predict(model, test))
}

Random <- function(tech, tran, test) {
  tech = strsplit(as.character(tech), " ~ ")[[2]]
  sample(tran[,tech], 1)
}

Default <- function(tech, tran, test) {
  tech = strsplit(as.character(tech), " ~ ")[[2]]
  mean(tran[,tech])
}

mse <- function(tech, test, pred) {
  tech = strsplit(as.character(tech), " ~ ")[[2]]
  as.numeric((pred - test[,tech])^2)
}

prediction <- function(tech, tran, test) {
  sapply(REGRESSORS, function(r) {
    eval(call(r, tech, tran, test))
  })
}

evaluation <- function(tech, tran, test) {
  sapply(REGRESSORS, function(r) {
    pred = eval(call(r, tech, tran, test))
    mse(tech, test, pred)
  })
}
