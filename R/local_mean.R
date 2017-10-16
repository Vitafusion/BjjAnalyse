#' location spending mean data
#' @param x a dataframe
#' @return k a by
#' @import tidyverse
#' @importFrom magrittr %>%
#' @importFrom dplyr select
#' @importFrom dplyr filter
#' @export
#' @importFrom stats na.omit

loc_mean <- function(x)
{
  x <- na.omit(x)
  t <- x %>% select('location','spending/y')
  k <- by(t$`spending/y`,t$location,mean)
  return(k)

}
