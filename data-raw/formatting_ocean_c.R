# Reading in ocean carbon uptake data
observed_data_ocean <- read.csv("data-raw/gcp_data.csv", stringsAsFactors = FALSE)
  names(observed_data_ocean)[names(observed_data_ocean) == "Year"] <- "year"
  names(observed_data_ocean)[names(observed_data_ocean) == "ocean_sink"] <- "ocean_uptake"
  observed_data_ocean <- observed_data_ocean[,c("year", "ocean_uptake")]
  observed_data_ocean <- na.omit(observed_data_ocean)

usethis::use_data(observed_data_ocean, overwrite = TRUE, internal = TRUE)
