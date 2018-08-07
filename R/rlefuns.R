#' @title Run Length Encoding
#'
#' @description Functions for 1, 2, and n-dimensional run length encoding.
#'
#' @param data Input data
#'
#' @import purrr
#' @import dplyr
#' @export rle_n
#######################################


rle_all <- function(data){
  output <- data %>%
    map(rle)

  return(output)
}
