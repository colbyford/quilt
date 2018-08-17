#' @title Loop Functions
#' @description A set of functions to enhance loop functionality
#'
#' @param data Input data with columns or rows to be used.
#'
#' @import dplyr
#' @export returns
######################################

returns <- function(objs, names, env = .GlobalEnv){
  for (i in 1:length(objs)){
    assign(names[i],
      #deparse(substitute(objs[i])),
           objs[i],
           envir = env)
  }
}
