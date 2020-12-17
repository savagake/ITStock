#' t_cr
#'
#' @param two_tail = TURE if it is a two-tail test, = FALSE if one-tail, default is two-tail
#' @param alpha the significance level of choice
#' @param df degree of freedom
#'
#' @return
#' @export
#'
#' @examples
#' t_cr(two_tail=FALSE,0.05,5)
t_cr <- function(two_tail=TRUE,alpha,df){
  if (two_tail == TRUE){
    return(qt(1-alpha/2,df))
  }
  if (two_tail == FALSE){
    return(qt(1-alpha,df))
  }
}
