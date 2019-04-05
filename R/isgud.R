#Creates and returns a dataframe containing effectiveness measures of an lm object.
isgud <- function(...)
  {
  mods_str <- deparse(substitute(c(...)))
  rm_concat <- gsub("\\)", "", gsub("c\\(", "", mods_str))
  mods_list <- unlist(as.list(strsplit(rm_concat, "\\,\\s")[[1]]))

  models <- list(...)
  final <- data.frame()



  for (i in seq_along(1:length(models))){
    lm1 <- models[i]
    RSE <- lm1[[11]]
    MSE <- RSE ^ 2
    n <- length(lm1[[2]])
    p <- length(lm1[[1]])
    SSE <- MSE * (n - p)
    SSTO <- sum((data$Price - mean(data$Price))^2)
    rob <- 1 - (SSE/SSTO)
    final =rbind(final,data.frame(
                                  AIC=AIC(models[[i]]),
                                  BIC= BIC(models[[i]]),
                                  adj_r_squared = if_else(is.null(summary(models[[i]])$adj.r.squared,rob,summary(models[[i]])$adj.r.squared)),
                 formula = str_extract(str_flatten(deparse(models[[i]]$call)),"\\s\\w.*~.*,")%>%
                   str_trim()%>%
                   str_remove(",")
                 ))


  }
  cbind(model=mods_list,final)
}


