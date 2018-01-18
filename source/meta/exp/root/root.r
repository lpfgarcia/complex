# R Code
# Complexity Measure Experiment
# L. Garcia, A. Lorena, M. de Solto 2017
# Extract complexity measures from the datasets 

formulae <- function(cls) {
  formula(paste(cls, "~", paste(MEASURES, collapse="+")))
}

oracle <- function(fun, tran, test) {

  lapply(CLASSIFIERS, function(c) {
    t(mapply(function(tran, test) {
    eval(call(fun, formulae(c), tran, test))
    }, tran=tran, test=test))
  })

}

root <- function() {

  data = read()
  distribution(data)
  histogram(data)

  tmp = leaveout(data)
  aux = oracle("evaluation", tmp$tran, tmp$test)
  boxplot(aux)

  aux = oracle("prediction", tmp$tran, tmp$test)
  performance(data, aux)
  features(data)
}
