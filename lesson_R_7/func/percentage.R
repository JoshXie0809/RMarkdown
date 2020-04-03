#' percentage()
#' change x to x1 % form, x1 = x * 100 , digits =2 
#'
percentage<-function(x, na.rm = T)
{
  x.percentage<-round(x*100,digits = 2)
  x.final <- paste(x.percentage,"%",sep = '')
}