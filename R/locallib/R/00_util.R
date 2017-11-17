#' check that a value is a plain string that is not empty
#'
#' @param input An arbitrary value to check
#' @export
is_string_with_content <- function(input) {
  if (is.null(input)) {
    return(FALSE)
  }
  if (!is.atomic(input)) {
    return(FALSE)
  }
  if (length(input) != 1) {
    return(FALSE)
  }
  if (is.na(input)) {
    return(FALSE)
  }
  return(assertthat::is.string(input) && (nchar(input) > 0))
}
