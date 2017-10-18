#' plot age&frequency data
#' @param x a dataframe
#' @export
#' @import ggplot2
#' @import tidyverse
#' @importFrom dplyr select
#' @importFrom magrittr %>%
#' @importFrom graphics  barplot
#'


age_freq <- function(x)
{
  y <- x %>% select(age)
  z <- table(y)
  z <- as.data.frame(z)
  g <- ggplot(z,aes(y,Freq))
  g + geom_bar(stat = "identity") + ggtitle("Age Frequency") + xlab("Age") + ylab("Freq")
}
