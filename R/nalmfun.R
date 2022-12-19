#' Load the 2009 Mortality table
#'
#'This function has been designed to return the NALM mortality table of year 2009
#'
#' @author Krishna Kumar Shrestha
#' @import readr
#' @import dplyr
#' @return A data frame
#' @export
#'
#' @examples
#' nalm2009()
nalm2009 <- function() {
  file <- system.file("data", "nalm.csv", package = "nalm")
  readr::read_csv(file)
}









