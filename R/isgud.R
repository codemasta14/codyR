#Creates and returns a dataframe containing effectiveness measures of an lm object.
isgud <- function(...)
  {
  mods_str <- deparse(substitute(c(...)))
  rm_concat <- gsub("\\)", "", gsub("c\\(", "", mods_str))
  mods_list <- unlist(as.list(strsplit(rm_concat, "\\,\\s")[[1]]))

  models <- list(...)
  final <- data.frame()



  for (i in seq_along(1:length(models))){
    final =rbind(final,data.frame(
                                  AIC=AIC(models[[i]]),
                                  BIC= BIC(models[[i]]),
                                  adj_R_squared=summary(models[[i]])$adj.r.squared,
                 formula = str_extract(deparse(models[[i]]$call),"\\s\\w.*~.*,")%>%
                   str_trim()%>%
                   str_remove(",")
                 ))


  }
  cbind(model=mods_list,final)
}
