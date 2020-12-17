#' CMC_get_listing
#'
#' @param API_key API key created through the official site of Coin Market Cap
#' @param start The starting date of the data, default = 1
#' @param fiat the currency in which the value of the cryptocurrency is presented. default is in USD
#' @param limit maximum number of entries to acquire, default is 5000
#'
#' @return a dataframe of the current cryptocurrency market info of interest
#' @export
#'
#' @examples
#' CMC_get_listing(API_key = "496cdd8f-3b52-4296-b467-fc6617012118")
CMC_get_listing <- function(API_key,start = 1,fiat = "USD",limit = 5000){
  #start=1&limit=5000&convert=USD
  Parameters = paste0(
    "start=",start,
    "&limit=",limit,
    "&convert=",fiat
  )

  URL = "https://pro-api.coinmarketcap.com/v1/cryptocurrency/listings/latest?"
  Path = paste0(URL,Parameters,"&CMC_PRO_API_KEY=",API_key)
  initialquery = jsonlite::fromJSON(Path)

  #this includes basic info of the cryptocurrency projects and data frames
  df1 = data.frame(initialquery$data)
  #this data frame includes the price, voulume, mkt cap of each cryptocurrency in USD
  df2 = data.frame(initialquery$data$quote$USD)
  crypto_currencies = cbind(df1[c("name","symbol")],df2[c("price","volume_24h","market_cap")])
  return(crypto_currencies)
}
