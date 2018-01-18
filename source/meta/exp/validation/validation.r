# R Code
# k-fold cross validation process
# L. Garcia, A. Lorena, M. de Solto 2017
# Metodology for validation


leaveout <- function(data) {

  id = 1:nrow(data)

  tran = lapply(1:nrow(data), function(i) {
    subset(data, id %in% setdiff(1:nrow(data), i))
  })

  test = lapply(1:nrow(data), function(i) {
    subset(data, id %in% i)
  })

  tmp = list()
  tmp$tran = tran
  tmp$test = test
  return(tmp)
}
