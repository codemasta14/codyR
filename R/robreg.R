#Robust Regression
#Unfinished

robreg <- function(df,my_lm,iterations){
  new_df <<- df%>%
    cbind(residuals = my_lm$residuals)%>%
    mutate(scaled_residuals= residuals/mad(residuals),
           weights = case_when(
             abs(scaled_residuals) <= 1.345~1,
             T~1.345/abs(scaled_residuals)))

  new_lm =

  for (i in seq_along(1:iterations)){

  }

}

lm1 <- lm(mpg~wt,mtcars)

robreg(mtcars,lm1,3)

partc1 <- partb%>%
  select(-residuals)%>%
  cbind(residuals = lm3$residuals)%>%
  mutate(scaled_residuals= residuals/mad(residuals),
         weights = case_when(
           abs(scaled_residuals) <= 1.345~1,
           T~1.345/abs(scaled_residuals)))

lm4<- lm(Y~X1,weights = weights, partc1)


partc2 <- partc1%>%
  select(-residuals)%>%
  cbind(residuals = lm4$residuals)%>%
  mutate(scaled_residuals= residuals/mad(residuals),
         weights = case_when(
           abs(scaled_residuals) <= 1.345~1,
           T~1.345/abs(scaled_residuals)))

partb <- p11.11%>%
  cbind(residuals = lm2$residuals)%>%
  mutate(scaled_residuals= residuals/mad(residuals),
         weights = case_when(
           abs(scaled_residuals) <= 1.345~1,
           T~1.345/abs(scaled_residuals)
         ))
