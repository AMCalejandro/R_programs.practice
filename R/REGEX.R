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


#' consonant_starter
#'
#' Given a string or list of strings, it gets those words starting with three consonants 
#' strings of length equal to three are excluded
#' 
#' @param x The string/strings on a vector
#'
#' @return the matching words
#'
#' @examples
consonant_starter = function(x = NULL) {
  library(stringr)
  str_subset(x, pattern = "^[^aeiou\\d\\s]{3}.+")
}


#' vowels_finder
#'
#' Given a string or list of strings, it gets those words starting with three consonants 
#' strings of length equal to three are excluded
#' 
#' @param x The string/strings on a vector
#'
#' @return the matching words in either upper or lower case format.
#'
#' @examples
#' 
vowels_finder = function(x = NULL, capital = "lower") {
  library(stringr)
  x = str_to_lower(x)
  if (capital == "lower"){
  str_subset(x, pattern = "[aeiou]{3}")
  }
  else {str_to_upper(str_subset(x, pattern = "[aeiou]{3}"))
  }
}

#' vc_pairs
#'
#' Given a string or list of strings, it gets those words that have two or more vowel-consonant pairs in a row
#' 
#' @param x The string/strings on a vector
#'
#' @return the matching words in either upper or lower case format.
#'
#' @examples
#' 
vc_finder = function(x = NULL) {
  library(stringr)
  x = str_to_lower(x)
    str_subset(x, pattern = "([aeiou][^aeiou]){2,}")
}

