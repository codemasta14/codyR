#Adds residuals from an lm object to a pairs plot to compare added variable plots.
res_pairs <- function(my_lm){
  df <- str_remove_all(str_extract(deparse(my_lm$call),"data = .*"),"data = |\\)")
  variables<- deparse(my_lm$call)%>%
    str_extract("~.*data =")%>%
    str_remove_all("~|, data =")%>%
    str_split("[+-\\:]")%>%
    unlist%>%
    str_trim()


  og_df = get(df)
  filtered = og_df
  for(i in seq_along(1:length(variables))){
    filtered <- filter(filtered,!is.na(get(variables[i])))

  }

  binded = cbind(my_lm$residuals,filtered)
  pairs(right_join(binded,og_df),panel=panel.smooth)

}

