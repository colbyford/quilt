#' @title Statistical Enhancements Using Metadata
#' @description Functions to auto-compute statistical metrics for an object.
#'
#' @param data matrix, dataframe, tibble, or list for which additional metadata will be added.
#' @param stats Vector of statistics to compute for the object.
#'
#' @import dplyr
#' @import purrr
#' @export add_stats
######################################

add_stats <- function(data){
  for (i in 1:ncol(data)){
    attributes(data[,i]) <- list(mean = mean(data[,i]),
                                 sd = sd(data[,i]),
                                 sum = sum(data[,i]),
                                 var = var(data[,i]))
  }
}
