#' Greet a user
#'
#' Prints a greeting for a user.
#'
#' @param name character; name of user
#'
#' @return nothing
#' @export
#'
#' @examples
#' greet()
#' greet("Sophie")
greet <- function(name = "User") {
  message("Hello ", cli::col_cyan(name), "!", sep = "")
}
