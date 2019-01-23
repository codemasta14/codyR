# codyR
Short term description of functions before I properly build them.

isgud() which takes any number of lm objects and returns the AIC, BIC, and the adjusted R squared value for it/

wasgud() which returns a dataframe with the most optimal of the scores the isgud() command gives, for the lm objects given.


codypox() which takes an lm object and returns the dataframe the lm object was created from with a new variable, new_y which is y with the optimal transformation according to the boxCox function


res_pairs() which takes an lm object, and builds the pairs plot with the residuals. This one is especially useful because it is robust enough to handle variables in your model with NA's in the dataset.


I just thought I would share, and potentially if you wanted you can use it. To install it just run 

devtools::install_github("codemasta14/codyR")
