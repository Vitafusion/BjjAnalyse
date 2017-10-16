#' plot age&frequency data
#' @param x an object
#' @return k a plot
#' @export
#' @importFrom graphics  barplot
#'


age_freq <- function(x)
{
  barplot(table(x),ylim = c(0,60),main = "age&trainning frequency")
}
