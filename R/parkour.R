#' @param parmethod vector or \code{NULL}: the values to be matched.
#'
#' @import doParallel
#' @export parkour
######################################

parkour <- function(parmethod = "localpar"){
  no_cores <- detectCores()
  cl <- makeCluster(no_cores)
  #clusterExport(cl, c(lsf.str()))
  registerDoParallel(cl)
}
