#Adds residuals from an lm object to a pairs plot to compare added variable plots.
res_pairs <- function(my_lm,df,...){
  pairs(cbind(residuals=my_lm$residuals,df),panel=panel.smooth)
}



