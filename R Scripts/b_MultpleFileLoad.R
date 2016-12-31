# Multiple file loads
#
# in this example we will load multiple files at once.

# I already explained the readr package. The string R package is another package written by Hadley Wickham and it is used for string 
# manipulations. We will use it to work with file names.
library(readr)
library(stringr)


path = "D:/OneDrive - Diesel Analytics/Talks/GentleIntroductionToUsingRInPowerBI/Data/MultipleFileLoadWith/"
setwd(path)

# Used to get a list of all of the files in the current working directory and it places them in a character list
files <- list.files(".")
files <- str_subset(files,"ATL")

counter = 0

# The code below loops through all of the files in the list and appends them to the "master_data" data frame.
for (file in files){

	file_data <- read_csv(file)

   	if (counter == 0){
   		master_data <- file_data
   	} else{
   		master_data <- rbind(master_data, file_data)
   	}

	counter = counter + 1
}

