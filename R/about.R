#' @title About
#' @description Create easily digestible information about your dataset.
#'
#' @param data A dataset about which to return information.
#'
#' @import dplyr
#' @export about
######################################

about <- function(data){
  objectsize <- object.size(data)
  dimensions <- c(Rows = dim(data)[1],
                  Columns = dim(data)[2])
  variableinfo <- data %>%
    mutate_all(funs(mean, sum, sd))

  output <- list("Object Size" = objectsize,
                 "Dimensions" = dimensions,
                 "Variables" = variableinfo)
}
