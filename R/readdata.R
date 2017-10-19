#' read googlesheets data
#' @return bjjdata a dataframe
#' @import googlesheets
#' @export


read_data <- function()
{
  bjjdata <- gs_title("Jiu-jitsu data")
  bjjdata <- gs_read(bjjdata)
  bjjdata <- bjjdata[,-c(1)]
  return(bjjdata)
}
