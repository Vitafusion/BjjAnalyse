#' calculate injury rate
#' @import tidyverse
#' @importFrom magrittr %>%
#' @param x a dataframe
#' @importFrom dplyr select
#' @importFrom dplyr filter
#' @return p a object
#' @export
#'
#'


inj_rate <- function(x)
{

  t <- x %>% filter(injured == 'yes') %>% select(injured)
  p <- nrow(t)/nrow(x)
  return(p)


}
