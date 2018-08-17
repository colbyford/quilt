#' @title Pipe Functions
#' @description A set of transformations altered for use in the pipe.
#'
#' @param data Input data with columns or rows to be used.
#' @param names Vector of characters to use in renaming.
#' @param order Vector of indices or characters to use in reordering columns or rows.
#'
#' @import dplyr
#' @export rename_columns
#' @export rename_rows
#' @export reorder_columns
#' @export reorder_rows
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

reorder_columns <- function(data, order){
  if (length(order) == ncol(data)){
    data <- data[,order]

    return(data)
  } else{
    cat("Input data has ",
        ncol(data),
        " columns, but `order` argument has ",
        length(order),
        "\n",
        sep = "")
  }
}


reorder_rows <- function(data, order){
  if (length(order) == nrow(data)){
    data <- data[order,]

    return(data)
  } else{
    cat("Input data has ",
        nrow(data),
        " rows, but `order` argument has ",
        length(order),
        "\n",
        sep = "")
  }
}

reset_rownames <- function(data){
  rownames(data) <- NULL

  return(data)
}
