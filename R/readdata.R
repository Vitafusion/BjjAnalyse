#' read googlesheets data
#' @return an object bjjdata
#' @import googlesheets
#' @export


read_data <- function()
{
  bjjdata <- gs_title("Jiu-jitsu data")
  bjjdata <- gs_read(bjjdata)
  bjjdata <- bjjdata[,-c(1)]
  return(bjjdata)
}
