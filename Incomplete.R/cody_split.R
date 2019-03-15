cody_split <- function(x){
  train_nums = sample(1:nrow(x),nrow(x)/2)
  assign(paste0(deparse(substitute(x)),"_train"),x[train_nums,])
  assign(paste0(deparse(substitute(x)),"_test"),x[-train_nums,])
}
