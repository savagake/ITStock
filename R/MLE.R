#' MLE
#'
#' @param likelihood_func the likelihood function
#' @param lower the lower bound of the interval where MLE should exist
#' @param upper the upper bound of the interval where MLE should exist
#' @param units the number of equal spaces between the upper and lower bound
#'
#' @return
#' @export
#'
#' @examples
#' f = (exp(-(theta-1)^2)/2)+3*exp(-((theta-2)^2)/2)
#' MLE(f)
MLE<-function(likelihood_func,lower=-10,upper=10,units=1000){
  #Generate 1000 equispaced points
  theta<-seq(lower, upper, length=units)
  return (theta[which(likelihood_func(theta)==max(likelihood_func(theta)))])
}
