np_erase <- function(np_list){
  np_list%>%
    str_remove_all("[\\[\\]]")%>%
    str_split(", ")%>%
    unlist()
}
