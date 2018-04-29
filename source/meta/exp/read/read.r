# R Code
# Read the files
# L. Garcia, A. Lorena, M. de Solto 2017
# Read the .rdata files and merge

processing <- function(data) {
  replace(data, !is.finite(data) , 0)
}

make <- function() {
  do.call("rbind",
    lapply(files, function(file) {
      processing(dget(file))
    })
  )
}

read <- function() {
  data = data.frame(make())
  colnames(data) = c(MEASURES, CLASSIFIERS)
  return(data)
}
