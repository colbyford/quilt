#' @title Loop Functions
#' @description A set of functions to enhance loop functionality
#'
#' @param objs Vector of objects to return from function.
#' @param names Vector of names for the objects being returned.
#' @param env Environment to which objects should be returned.
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

