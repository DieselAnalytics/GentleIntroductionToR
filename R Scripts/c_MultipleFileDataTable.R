# Loading a bunch of files
#
# The readr package is nice but if you want to combine a bunch of files the data.table package may be the one for you. Using the code below I 
# am able to load over 1,000 files in a few seconds. Try doing that in Power Query! Note the little amount of code that it took to
# accomplish this.

library(data.table)
library(stringr)

path = "D:/OneDrive - Diesel Analytics/Talks/GentleIntroductionToUsingRInPowerBI/Data/MultipleFileLoadWith/"
setwd(path)

# All games
files <- list.files(".")
column.names = c("a1", "a2", "a3", "a4", "a5", "h1", "h2", "h3", "h4", "h5", "period", "time", "team", "etype", "assist", "away", "block", "entered", "home", "left", "num", "opponent", "outof", "player", "points", "possession", "reason", "result", "steal", "type", "x", "y")
system.time(all.games <- rbindlist(lapply(files, fread, colClasses = list(character = column.names))))



