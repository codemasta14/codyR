#Gives you the optimal model according to the AIC, BIC and adj_R_Squared values, takes lm objects as input.
wasgud <- function(...){
  filter(isgud(...),
         AIC == min(AIC),
         BIC == min(BIC),
         adj_R_squared == max(adj_R_squared)
         )%>%
    unique()
  }
