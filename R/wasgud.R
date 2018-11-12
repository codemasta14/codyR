#Incomplete
wasgud <- function(...){
  models <- list(...)
  final <- data.frame()

  for (i in seq_along(1:length(models))){
    final =rbind(final,data.frame(
      AIC=AIC(models[[i]]),
      BIC= BIC(models[[i]]),
      adj_R_squared=summary(models[[i]])$adj.r.squared))

  }

  filter(final,AIC==min(AIC)|BIC==min(BIC)|adj_R_squared == max(adj_R_squared))
}

lm1 <- lm(mpg~wt,data=mtcars)
lm2 <- lm(mpg~cyl,data=mtcars)

isgud(lm1)
isgud(lm2)

broom::tidy(lm1)

wasgud(lm1,lm2,lm1)

