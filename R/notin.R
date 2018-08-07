#' @title Set Functions
#' @description A collection of pipe-able set functions.
#'
#' @param x vector or \code{NULL}: the values to be matched.
#' @param table vector or \code{NULL}: the values to be matched against.
#' @param nomatch the values to be returned in the case when no match is found. Note that it is coerced to integer.
#'
#' @export `%notin%`
######################################

`%notin%` <- function(x, table) {
  match(x, table, nomatch = 0L) == 0L
}
