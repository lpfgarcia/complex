# R Code
# k-fold cross validation process
# L. Garcia, A. Lorena, M. de Solto 2017
# Metodology for validation

cfold <- function(data) {

  id = createFolds(data$class, k=FOLDS, list=FALSE)

  tran = lapply(1:FOLDS, function(i) {
    subset(data, id %in% setdiff(1:FOLDS, i))
  })

  test = lapply(1:FOLDS, function(i) {
    subset(data, id %in% i)
  })

  tmp = list()
  tmp$tran = tran
  tmp$test = test
  return(tmp)
}
