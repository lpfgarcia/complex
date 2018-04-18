# R Code
# Complexity Measure Experiment
# L. Garcia, A. Lorena, M. de Solto 2017
# Extract complexity measures from data 

save <- function(aux, file) {
  name = gsub("arff", "RData", basename(file))
  dump("aux", name)
}

root <- function(file) {

  data = read.arff(file)
  aux = system.time(complexity(class ~., data))[3]
  data = cfold(data)

  tmp = sapply(1:FOLDS, function(i){
    system.time(classifiers(data$tran[[i]], data$test[[i]]))[3]
  })

  aux = c(aux, sum(tmp))
  save(aux, file)
  return(0)
}
