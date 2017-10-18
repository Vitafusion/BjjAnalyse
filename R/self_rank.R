#' plot self rank distribution
#' @param x a dataframe
#' @export
#' @import ggplot2
#' @import tidyverse
#' @importFrom dplyr select
#' @importFrom magrittr %>%
#'


self_rank <- function(x)
{
  t <- x %>% select('self rank')
  t <- table(t)
  t <- as.data.frame(t)
  colnames(t) <- c("rank","freq")
  g <- ggplot(t, aes(x="", y = freq, fill = rank)) + geom_bar(width = 1, stat = "identity")
  pie <- g + coord_polar("y", start = 0) + ylab(" ") + scale_fill_manual(values = c("black","blue","brown","purple","white")) + xlab(" ")

}
