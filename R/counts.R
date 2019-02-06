counts = function(df,...){
  group_vars <- enquos(...)
  df%>%
    group_by(!!!group_vars)%>%
    summarize(total = n())

}
