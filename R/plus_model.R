#incomplete
#plus_model <- function(my_lm,...){
#  df <<- get(str_remove_all(str_extract(str_flatten(deparse(my_lm$call)),"data = .*"),"data = |\\)"))

#      wow <-  enquos(...)
#       early <<- deparse(my_lm$call)%>%
#         str_flatten()%>%
#        str_remove_all("lm|\\(|\\)")%>%
#         str_replace(",",paste0(
#           str_remove(as.character(more),pattern="~"),","))%>%
#        str_split(",")%>%
#        unlist()%>%
#        .[1]%>%
#        list()

       # sr_replace_all(pattern="\\s\\w",paste0(df,"$"))


#}
#plus_model(my_lm,+cyl)
#my_lm <- lm(mpg~wt,mtcars)


#?do.call

#do.call("lm",plus_model(my_lm,+cyl))

