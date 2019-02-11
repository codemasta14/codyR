oh_encode <- function(df,x){
  x=enquo(x)
  df%>%
    mutate(wow = 1)%>%
    spread(key=!!x,value = wow, fill = 0)
}


