#Returns an optimal lambda y transformation for an lm object
codypox <- function(my_lm){
  trans <- car::boxCox(my_lm,plot = F)%>%
    data.frame()%>%
    filter(y==max(y))%>%
    .[[1]]
    return(trans)
}



