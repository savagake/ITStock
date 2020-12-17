#' stock_plot
#'
#' @param ticker1 name of the first ticker to plot
#' @param ticker2 name of the second ticker to plot
#' @param start start date, default set to "2013-10-20"
#' @param end end date, default set to "2020-10-20"
#' @param color1 the color of the first plot, default set to "dodgerblue3"
#' @param color2 the color of the first plot, default set to "hotpink3"
#'
#' @return
#' @export
#'
#' @examples
#' stock_plot(LIT,PCRFY,start="2013-10-20",end="2020-10-20",color1="dodgerblue3",color2="hotpink3")
stock_plot <- function(ticker1,ticker2,start="2013-10-20",end="2020-10-20",color1="dodgerblue3",color2="hotpink3"){
  quantmod::getSymbols(paste0('"',ticker1,'"'), from=start, to=end)
  quantmod::getSymbols(paste0('"',ticker2,'"'), from=start, to=end)
  t1_adj=unclass(ticker1$ticker1.Adjusted)
  t2_adj=unclass(ticker2$ticker2.Adjusted)
  par(mar=c(4,4,4,4))
  plot(t1_adj,type = "l",col=color1,ylab=paste0('"',ticker1,'"'),xlab=paste0('"',start,"to",end,'"'))
  legend(1,40,legend = c(paste0('"',ticker1,'"'),paste0('"',ticker2,'"')),col=c(color1,color2),lty=c(1,1), cex=0.8)
  par(new=T)
  plot(t2_adj,type="l",xlim=c(0,1600),axes = FALSE,ylab="",xlab="",col=color2)
  mtext(side=4,line=2,paste0(ticker2,".adjusted"))
  axis(side = 4)
}
