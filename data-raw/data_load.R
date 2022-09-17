# code to prepare `police_shootings` dataset goes here
data_path <- "data-raw/school-shootings-data.csv"
# read data from github
schoolshootings <- readr::read_csv(data_path)
# ensure access to pipe
`%>%` <- magrittr::`%>%`
# data cleaning code here
schoolshootings <- schoolshootings %>%
  # format date field
  dplyr::mutate(date = lubridate::mdy(date))
# save dataset to data folder
save(schoolshootings, file = "data/schoolshootings.rda" )
