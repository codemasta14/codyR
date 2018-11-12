#Creates and returns a dataframe containing effectiveness measures of an lm object.
isgud <- function(...)
  {
  models <- list(...)
  final <- data.frame()

  for (i in seq_along(1:length(models))){
    final =rbind(final,data.frame(
                                  AIC=AIC(models[[i]]),
                                  BIC= BIC(models[[i]]),
                                  adj_R_squared=summary(models[[i]])$adj.r.squared))

  }

  final
}
