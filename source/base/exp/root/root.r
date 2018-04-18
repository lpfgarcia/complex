# R Code
# Complexity Measure Experiment
# L. Garcia, A. Lorena, M. de Solto 2017
# Extract complexity measures from data 

save <- function(aux, file) {
  name = gsub("arff", "RData", basename(file))
  dump("aux", name)
}

measures <- function(tran, test) {
  c(complexity(class ~., tran), classifiers(tran, test))
}

root <- function(file) {

  data = cfold(read.arff(file))

  aux = do.call("rbind",
    lapply(1:FOLDS, function(i){
        measures(data$tran[[i]], data$test[[i]])
    })
  )

  save(aux, file)
  return(0)
}