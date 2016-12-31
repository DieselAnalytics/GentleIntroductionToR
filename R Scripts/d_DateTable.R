# Date Table
#
# The code below can be used to create a date table on the file. I used the dplyr and lubridate package in this script. 
# Both packages were written by Hadley Wickham. The dplyr along with its sister package "tidyr" gives you the tools
# that you need to reshape your data. The lubridate package is used to handling dates. 
library(lubridate)
library(dplyr)

# I specify the start and end date of my date table
start.date = "20100101"
end.date = "20161231"

# I use the sequence function along wit hthe "ymd" (year month date) function from lubridate to generate a list of
# dates
Dates <- seq(ymd(start.date), ymd(end.date), by = "days")

# I convert the list of dates to a data frame that is the basis of my date table. I then add attributes to my date
# table using date functions from lubridate. One function that is availabe in lubridate that is not available in M 
# are functions for ISO dates. I used some of them below.
DateTable <-
  data.frame(Dates) %>%
  mutate("DateKey" = format(Dates, "%Y%m%d")
         ,"Year" = year(Dates)
         ,"Year Day" = yday(Dates)
         ,"Quarter Name" = paste("Q",quarter(Dates),sep="")
         ,"Quarter Key" = quarter(Dates)
         ,"Quarter Day" = qday(Dates)
         ,"Month Name" = format(Dates, "%b")
         ,"Month Key" = month(Dates)
         ,"Month Day" = mday(Dates)
         ,"Week" = week(Dates)
         ,"Weekday Name" = wday(Dates, label = TRUE)
         ,"Weekday Key" = wday(Dates)
         ,"Weekend" = ifelse(wday(Dates) %in% c(1,7),TRUE,FALSE)
  )
