#' extraction
#'
#' Given a string, it gets the middle character differentiating even and odd strings
#' 
#' @param x The string contained on a vector
#'
#' @return The middle string character
#'
#' @examples

extraction  = function(x) {
  library(stringr)
  myLength = str_length(x)
  
  if (myLength == 0) {
    stop("string cannot have 0 length")
  }
  if (myLength <=2) {
    stop("String length less than 2. This string does not have mid character")
  }
  
  if (myLength %% 2 == 0) {# Getting the two mid Chars
    miMidCar = str_sub(x, start = myLength - 1, end = myLength + 1)
  }

  else {
    miMidCar = str_sub(x, start =  myLength - 0.5 , end = myLength -0.5)
  }
  miMidCar
}



