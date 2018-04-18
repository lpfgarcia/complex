# R Code
# Complexity Measure Experiment
# L. Garcia, A. Lorena, M. de Solto 2017
# Extract complexity measures from data 

save <- function(aux, file) {
  name = gsub("arff", "RData", basename(file))
  dump("aux", name)
}

oracle <- function(tran, test) {
  rowMeans(sapply(1:FOLDS, function(i){
    classifiers(tran[[i]], test[[i]])
  }))
}

root <- function(file) {
  data = cfold(read.arff(file))
  tmp = system.time(complexity(class ~., data$data))[3]
  aux = c(tmp, system.time(oracle(data$tran, data$test))[3])
  save(aux, file)
  return(0)
}
