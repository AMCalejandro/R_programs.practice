#' ed_ending
#'
#' Given a string or list of strings, it gets those words ending with "ed" only
#' It excludes words with double "ee"d 
#' 
#' @param x The string/strings on a vector
#'
#' @return the matching words
#'
#' @examples

ed_ending = function(x = NULL) {
  library(stringr)
  str_subset(x, pattern = ".*[^e]e{1}d$")
}


#' ed_ending
#'
#' Given a string or list of strings, it gets those words ending with "ing" or "ise" 
#' only
#' 
#' @param x The string/strings on a vector
#'
#' @return the matching words
#'
#' @examples

ingIse_ending = function(x = NULL) {
  library(stringr)
  str_subset(x, pattern = "(ing|ise)$")
}

