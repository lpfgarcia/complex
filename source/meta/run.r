# R Code
# Run the experiment
# L. Garcia, A. Lorena, M. de Solto 2017
# Start the experiment for all datasets

setup <- function() {

  aux = list.files("exp", recursive=TRUE, full.name=TRUE)
  for(i in aux)
    source(i)
}

setup()
root()
