
#Returns a dataframe with a transformed y value, found by the boxCox method in the cars package
codypox <- function(my_lm){
  trans <- car::boxCox(my_lm,plot = F)%>%
    data.frame()%>%
    filter(y==max(y))%>%
    .[[1]]
  variable <- (my_lm$terms)[[2]]
  variable <- enquo(variable)
  df <- str_remove_all(str_extract(deparse(my_lm$call),"data = .*"),"data = |\\)")
  og_df <- get(df)
  mutate(og_df,tempvar= !!variable,new_y = tempvar^trans)%>%
    select(-tempvar)

}



