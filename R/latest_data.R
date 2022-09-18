#' Get latest data from Washington Post Github Repo
#'
#' @return tibble
#' @export
#' @description Checks if new data is available from the Washington Post Github repo and returns the most current dataset.
#'
#' @importFrom rlang .data
#' @examples
#' latest_data()
latest_data <- function(){
  # get package data
  pkg_data <- waposchosh::schoolshootings
  # get current data from gh
  gh_url <- "https://raw.githubusercontent.com/washingtonpost/data-school-shootings/master/school-shootings-data.csv"
  # ensure consistent case on manner of death field
  curr_data <- readr::read_csv(gh_url, show_col_types = FALSE) %>%
    dplyr::mutate(date = lubridate::mdy(date))
  # compare to check if identical
  identical_check <- FALSE
  if( !identical(pkg_data, curr_data) & length(curr_data) > 1 ){
    identical_check <- TRUE
  }
  if(identical_check){
    print("Update available. Returning latest dataset.")
    return(curr_data)
  } else{
    print("No update available. Returning existing package dataset.")
    return(pkg_data)
  }
}
