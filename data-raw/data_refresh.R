# code to get `fatal-police-shootings-data.csv` in data-raw/ goes here
gh_data_url <- "https://raw.githubusercontent.com/washingtonpost/data-school-shootings/master/school-shootings-data.csv"
# downlaod data file from github
download.file(gh_data_url, destfile = "data-raw/school-shootings-data.csv")
# code to get record_layout.csv in data-raw/ goes here
gh_record_layout_url <- "https://raw.githubusercontent.com/washingtonpost/data-school-shootings/master/record_layout.csv"
# downlaod record layout file from github
download.file(gh_record_layout_url, destfile = "data-raw/record_layout.csv")
