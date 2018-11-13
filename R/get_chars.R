#Simply reference code, created by Mckay Davis
get_chars <- function(...) {
  mods_str <- deparse(substitute(...))
  rm_concat <- gsub("\\)", "", gsub("c\\(", "", mods_str))
  mods_list <- as.list(strsplit(rm_concat, "\\,\\s")[[1]])
  return(mods_list)
}


