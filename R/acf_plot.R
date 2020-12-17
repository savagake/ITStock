#' acf_plot
#'
#' @param tsdata the time series which you are interested in and want to see the autocorrelogram
#'
#' @return
#' @export
#'
#' @examples
#' data = ITStock::DGS10
#' CMR_ts=ts(as.numeric(data[,2]),start=c(1980,11),freq=12)
#' acf_plot(CMR_ts)
acf_plot <- function(tsdata){
  forecast::tsdisplay(tsdata)
}
