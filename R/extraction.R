#' extraction
#'
#' Given a string, it gets the middle character dealing with even or paired strings
#' 
#' @param x The string contained on a vector
#'
#' @return The middle string character
#'
#' @examples

extraction  = function(x) {
  
  myLength = str_length(x)
  
  if (myLength == 0) {
    stop("string cannot have 0 length")
  }
  if (myLength %% 2 == 0) {# Getting the two mid Chars
    miMidCar = str_sub(x, start = myLength - 1, end = myLength +1)
  }

  else {
    miMidCar = str_sub(x, start =  myLength - 0.5 , end = myLength -0.5)
  }
  miMidCar
}
