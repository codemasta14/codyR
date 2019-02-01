#incomplete
plus_model <- function(my_lm,...){
  df <- str_remove_all(str_extract(str_flatten(deparse(my_lm$call)),"data = .*"),"data = |\\)")
  more <- enquos(...)
  deparse(my_lm$call)%>%
    str_flatten()%>%
    {eval(expression(.))}
  # sr_replace_all(pattern="\\s\\w",paste0(df,"$"))


}
plus_model(my_lm,+cyl)
my_lm <- lm(mpg~wt,mtcars)

parse("lm(formula = mpg ~ wt, data = mtcars)")

mtcars%>%
  group_by(am)%>%
  summarize(favstats(mpg))
