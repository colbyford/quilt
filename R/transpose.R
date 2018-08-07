#' @param data matrix, dataframe, tibble, or list to be transposed.
#' @param rownames Should the output data use the rownames from the input data as columns?
#' Logical (Default = \code{FALSE})
#'
#' @import dplyr
#' @export transpose
######################################

transpose <- function(data, rownames = FALSE){
  # Transpose Data Frame
  tdata <- data %>%
    t() %>%
    as.data.frame()

  if (rownames){
    colnames(tdata) <- rownames(data)
  } else{
    colnames(tdata) <- data[,1]
  }
  rownames(tdata) <- colnames(data)

  return(tdata)
}
