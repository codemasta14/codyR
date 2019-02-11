find_na <- function(df,x,group){
group <- enquo(group)
  x <-  enquo(x)
  var=sym(deparse(x))

list <- df%>%
  group_by(!!group)%>%
  filter(is.na(!!x))%>%
  select(!!group)%>%
  unlist()%>%
  unname()
df%>%
  filter(!!group %in% list)%>%
  View()
}

