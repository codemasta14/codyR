require(dplyr)
mutate_funs <- function(df,x,...){
  fun <- enquos(...)
  new_df <- df
  for(i in fun){
    new_df <- new_df%>%
      mutate(!!i := map(x,rlang::eval_tidy(i)))
  }
  return(new_df)
}

