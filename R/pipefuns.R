#' @title Pipe Functions
#' @description A set of transformations altered for use in the pipe.
#'
#' @param data Input data with columns or rows to be renamed.
#' @param names Vector of characters to
#'
#' @import dplyr
#' @export rename_columns
#' @export rename_rows
######################################

rename_columns <- function(data, names){
  if (length(names) == ncol(data)){
    colnames(data) <- names

    return(data)
  } else{
    cat("Input data has ",
        ncol(data),
        " columns, but `names` argument has ",
        length(names),
        "\n",
        sep = "")
  }

}


rename_rows <- function(data, names){
  if (length(names) == nrow(data)){
    rownames(data) <- names

    return(data)
  } else{
    cat("Input data has ",
        nrow(data),
        " rows, but `names` argument has ",
        length(names),
        "\n",
        sep = "")
  }

}
