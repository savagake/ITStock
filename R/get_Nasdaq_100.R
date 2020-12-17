#' get_Nasdaq_100
#'
#' @param API_key The API key for Quandl.com
#'
#' @return returns financial market data in a dataframe
#' @export
#'
#' @examples
#' API_key = "rw4g3B3zCDzzb-yyrKeQ"
#' get_Nasdaq_100(API_key)
get_Nasdaq_100 <- function(API_key){
  Quandl_db = "NASDAQOMX" #database name
  dataset = "/NDX" #dataset within database
  URL = "https://www.quandl.com/api/v3/datasets/"
  Path = paste0(URL,Quandl_db,dataset,"/data.json?api_key=",API_key)

  query = jsonlite::fromJSON(Path)
  nasdaq_100 = query$dataset_data$data[,1:2]
  names = c("date","index_value")
  colnames(nasdaq_100) <- names
  return(nasdaq_100)
}
