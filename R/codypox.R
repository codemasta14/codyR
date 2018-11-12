#Incomplete
boxcox <- function(my_lm,df){

  variable <- (my_lm$terms)[[2]]
  variable <- enquo(variable)
  trans <- car::boxCox(my_lm,plotit=F)%>%
    as.data.frame()%>%
    filter(y==max(y))%>%
    .[[1]]


}

