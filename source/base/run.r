# R Code
# Run the experiment
# L. Garcia, A. Lorena, M. de Solto 2017
# Start the experiment for all datasets

setup <- function() {
  aux = list.files("exp/", recursive=TRUE, full.name=TRUE) 
  for(i in aux)
    source(i)
}

run <- function(...) {
  lapply(files, function(file) {
    cat(basename(file), "\n/"); root("measures", file)
    cat("/\n")
  })
}

setup()
aux = commandArgs(TRUE)
if(length(aux) == 0) {
  run()
} else {
  files = paste(DIR, "/datasets/", aux[1], sep="")
  run(files)
}
