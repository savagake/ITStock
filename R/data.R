#' Load data
#' @format 16600 x 11 dataframe
#'
#' \describe{
#' \item{Rank}{Name}{Platform}
#' }
#' data <- function(vgsales)
vg = read.csv("vgsales.csv")
usethis::use_data(vg,overwrite = TRUE)
DGS10 = read.csv("DGS10.csv")
usethis::use_data(DGS10,overwrite = TRUE)
