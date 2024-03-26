library(tidyverse)
library(usethis)

# Reading in ocean carbon uptake data
observed_data_ocean <- read.csv("data-raw/gcp_data.csv", stringsAsFactors = FALSE) %>%
  select(Year, ocean_sink) %>%
  rename(year = Year, ocean_uptake = ocean_sink) %>%
  na.omit() %>%
  filter(year >= 1950, year <= 2021) # Adjust the year range as needed

use_data(observed_data_ocean, overwrite = TRUE, internal = TRUE)
