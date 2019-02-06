
create_changes = function(df, expr) {
  expr = enquo(expr)
  change_name = paste0("changed_", quo_name(expr))
  up_name = paste0("up_", quo_name(expr))
  down_name = paste0("down_", quo_name(expr))
  change = sym(change_name)

  mutate(df,
         !!change_name := case_when(
           lag(!!expr)!=!!expr ~1,
           T ~ 0
         ),
         !!up_name := case_when(
           !!change & lag(!!expr)<!!expr ~1,
           T ~ 0
         ),
         !!down_name := case_when(
           !!change & lag(!!expr)>!!expr ~1,
           T ~ 0
         ))


}
