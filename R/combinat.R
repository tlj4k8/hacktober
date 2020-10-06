## Code to read in multiple CSVs, add some detail around number of bedrooms,...
## bind them together for easier manipulation, and create a Long file for visualization

#Installing and loading requisite package for "pivot_longer" later
install.packages('tidyr')
require(tidyr)


# Read several CSVs as independent lists for future combination
one_bedroom_zhvi <- read.csv('/Users/logan.ice/Documents/git/site/hacktober/data/zhvi_1br_by_zip.csv', stringsAsFactors = FALSE)
two_bedroom_zhvi <- read.csv('/Users/logan.ice/Documents/git/site/hacktober/data/zhvi_2br_by_zip.csv', stringsAsFactors = FALSE)
three_bedroom_zhvi <- read.csv('/Users/logan.ice/Documents/git/site/hacktober/data/zhvi_3br_by_zip.csv', stringsAsFactors = FALSE)
four_bedroom_zhvi <- read.csv('/Users/logan.ice/Documents/git/site/hacktober/data/zhvi_4br_by_zip.csv', stringsAsFactors = FALSE)
fiveplus_bedroom_zhvi <- read.csv('/Users/logan.ice/Documents/git/site/hacktober/data/zhvi_5plusbr_by_zip.csv', stringsAsFactors = FALSE)


# Add variable to each list with number of bedrooms
one_bedroom_zhvi$size <- 'oneBedroom'
two_bedroom_zhvi$size <- 'twoBedroom'
three_bedroom_zhvi$size <- 'threeBedroom'
four_bedroom_zhvi$size <- 'fourBedroom'
fiveplus_bedroom_zhvi$size <- 'fiveplusBedroom'

# Combine like Megazord
combined <- rbind(one_bedroom_zhvi,two_bedroom_zhvi,three_bedroom_zhvi,four_bedroom_zhvi,fiveplus_bedroom_zhvi)



# Make Long for visualization purposes. Dropping NAs for ease of viewing (and viz purposes)
newcombo <- pivot_longer(
  combined,
    cols = starts_with("X"),
    names_to = "Week",
    values_to = "Cost",
    values_drop_na = TRUE
  )


# Remove "X" From Weekname
newcombo$Week <- gsub("X", "", newcombo$Week)


# Write a combined csv back to the repo
write.csv(newcombo, '/Users/logan.ice/Documents/git/site/hacktober/data/combined_zip_zhvi.csv')

