#' plot self rank distribution
#' @param x a dataframe
#' @export
#' @import ggplot2
#' @import tidyverse
#' @importFrom dplyr select
#' @importFrom magrittr %>%



self_rank <- function(x)
{
  t <- x %>% select('self rank')
  t <- table(t)
  t <- as.data.frame(t)
  colnames(t) <- c("rank","freq")
  myLabel <- as.vector(t$rank)
  myLabel <- paste(myLabel, "(", round(t$freq/sum(t$freq) * 100, 2), "%)", sep = "")
  g <- ggplot(t, aes(x="", y = freq, fill = rank)) + geom_bar(width = 1,stat = "identity")
  g + coord_polar("y", start = 0) +
    xlab(" ") + ylab(" ") +
    scale_fill_manual(values = c("black","blue","brown","purple","white"),breaks = t$rank, labels = myLabel) +
    theme(axis.ticks = element_blank()) +
    theme(axis.text.x = element_blank())


}
