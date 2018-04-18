# R Code
# Complexity Measure Experiment
# L. Garcia, A. Lorena, M. de Solto 2017
# Extract complexity measures from data 

save <- function(aux, file) {
  name = gsub("arff", "RData", basename(file))
  dump("aux", name)
}

oracle <- function(train, test) {
  rowMeans(sapply(1:FOLDS, function(i){
    classifiers(tran[[i]], test[[i]])
  }))
}

root <- function(file) {
  data = cfold(read.arff(file))
  tmp = complexity(class ~., data$data)
  aux = c(tmp, oracle(fold$train, fold$test))
  save(aux, file)
  return(0)
}
