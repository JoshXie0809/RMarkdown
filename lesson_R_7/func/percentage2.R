#'
#'percentage function with 2 parameters
#'
percentage2 <- function(x, x.digits, na.rm = T)
{
  x.percentage <- round(x*100 , digits = x.digits)
  x.final <- paste(x.percentage, '%', sep = '')
  
  
}