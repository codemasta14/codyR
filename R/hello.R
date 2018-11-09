# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Ctrl + Shift + B'
#   Check Package:             'Ctrl + Shift + E'
#   Test Package:              'Ctrl + Shift + T'

hello <- function() {
  print("Hello, world!")
}

#Creates and returns a dataframe containing effectiveness measures of an lm object.
isgud <- function(my_lm){
  data.frame(AIC=AIC(my_lm),BIC= BIC(my_lm),adj_R_squared=summary(my_lm)$adj.r.squared)
}
