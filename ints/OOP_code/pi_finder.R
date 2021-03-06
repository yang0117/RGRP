#' Calculate the value of Pi
#'
#' This function used coordinates generated from two uniform distributions and count how many of
#' them falled into a circle to calculate the value of Pi
#'
#' @importFrom stats runif
#'
#' @import glmnet
#'
#' @param sample.size the sample size used to calculate Pi
#'
#' @return Pi, sample, sample indicator
#'
#' @examples
#' PiCal(30)
#' PiCal(300)
#'
#' @export


PiCal <- function(sample.size){
  sample <- PiSampleGenerator(sample.size=sample.size)
  indictor <- apply(sample,2,FUN=function(vec) sqrt(sum((vec-c(0.5,0.5))^2)) <= 0.5)
  pi.cal <- mean(indictor)*4
  output <- list(sample=sample,
                 indictor=indictor,
                 pi.cal=pi.cal)
  output <- structure(list(out = output), class = "pical_s3")
  return(output)
}






