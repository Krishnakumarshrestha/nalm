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



#' Calculate age from date of birth
#'
#'This function return age of the person based on date of birth
#'
#' @author Krishna Kumar Shrestha
#' @import readr
#' @import dplyr
#' @import lubridate
#' @param dob : Date of birth (compulsory)
#' @param current: Date as which you want to calculate age at . By default its current date
#' @return integer
#' @export
#'
#' @examples
#' df<- c(as.Date("1996-10-10"),as.Date("1995-10-10"))
#' age(df,as.Date("2021-02-10"))
#' age(df)

age <- function(dob,current=Sys.Date()) {



  if(is.Date(dob)==T & is.Date(current)==T)
  {
    return(trunc((dob %--% current) / years(1)))

  }

  else
  {
    return(1)
  }

}


#' Change all date in standard format if it is in character
#'
#'This function return standard format date if date is in character. if function fails to identify the date it returns the todays date
#'
#' @author Krishna Kumar Shrestha
#' @import readr
#' @import dplyr
#' @import lubridate
#' @param date : date that needs to be changed (must be character)
#' @return date
#' @export
#'
#' @examples
#' df<- c("1996-10-10","12-10/1996")
#' date_clean(df)




date_clean = function(date)
{
 convert= case_when(
    !is.na(mdy(date))~ mdy(date),
    !is.na(dmy(date))~dmy(date),
    !is.na(ymd(date))~ymd(date),
    TRUE~Sys.Date()

  )
  return(convert)

}
