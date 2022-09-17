test_that("tibble is created with correct cols of interest", {
  temp_df <- latest_data()
  expect_equal( tibble::is_tibble(temp_df), TRUE)
  expect_equal( base::ncol(temp_df), 50)

  temp_colnames <- c("uid", "nces_school_id", "school_name", "nces_district_id",
                     "district_name", "date", "school_year", "year", "time",
                     "day_of_week", "city", "state", "school_type", "enrollment",
                     "killed", "injured", "casualties", "shooting_type", "age_shooter1",
                     "gender_shooter1", "race_ethnicity_shooter1", "shooter_relationship1",
                     "shooter_deceased1", "deceased_notes1", "age_shooter2", "gender_shooter2",
                     "race_ethnicity_shooter2", "shooter_relationship2", "shooter_deceased2",
                     "deceased_notes2", "white", "black", "hispanic", "asian", "american_indian_alaska_native",
                     "hawaiian_native_pacific_islander", "two_or_more", "resource_officer",
                     "weapon", "weapon_source", "lat", "long", "staffing", "low_grade",
                     "high_grade", "lunch", "county", "state_fips", "county_fips", "ulocale")
  expect_equal( base::colnames(temp_df), temp_colnames)
})

