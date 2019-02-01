require(dplyr)
codystats <- function(data,variable,...){
  variable =enquo(variable)
  groups = enquos(...)
data%>%
  group_by(!!!groups)%>%
  summarize(min = min(!!variable,na.rm = T),
            Q1 = quantile(!!variable, .25,na.rm = T),
            median = quantile(!!variable, .5,na.rm = T),
            Q3 = quantile(!!variable, .75,na.rm = T),
            max = max(!!variable,na.rm = T),
            n= n(),
            missing = sum(is.na(!!variable))
  )
}

