# Set the working directory to the path that contains your data
path = "D:/OneDrive - Diesel Analytics/Talks/GentleIntroductionToUsingRInPowerBI/Data/PowerQuery"
setwd(path)

# Installs the R packages in that are needed in the scripts
library(readr)
library(dplyr)

# Loads the data from the "TradeBalanceInfo.csv" file into the "dataset" data frame
dataset <- read_csv("TradeBalanceInfo.csv")


# The below code snippet is will return only the "Country" column and it uses the "contains" function to return 
# any columns that contains "Trade Balance" in their name. Here are other functions that you can use:
# 
# starts_with():starts with a prefix
# ends_with(): ends with a prefix
# matches(): matches a regular expression
# num_range(): a numerical range like x01, x02, x03.
# one_of(): variables in character vector.
# everything(): all variables.


subset <-
    dataset %>%
    select(Country, contains('Trade Balance'))

