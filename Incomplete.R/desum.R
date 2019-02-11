de_sum <- function(df,count_var){
  count_var = enquo(count_var)
  sym(count_var)
  df%>%
  group_by(
    df%>%
    select(count_var)%>%
    colnames())%>%
          summarize(wow = mean(!!count_var))

}

data.frame(datasets::HairEyeColor)%>%
  de_sum(Freq)


mtcars%>%
  group_by("cyl")%>%
  summarize(mean = mean(mpg))
