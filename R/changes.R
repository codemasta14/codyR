my_mutate <- function(df, expr) {
  expr <- enquo(expr)
  change_name <- paste0("changed_", quo_name(expr))
  up_name <- paste0("up_", quo_name(expr))
  down_name <- paste0("down_", quo_name(expr))

  mutate(df,
         !!change_name := case_when(
           lag(!!expr)==!!expr ~T,
           T ~ F
         )
  )
}

my_mutate(faithful,waiting)
