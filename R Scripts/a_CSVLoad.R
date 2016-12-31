# Simple Data Loads
# In this file I give you several simple data load examples. When using R to load data into Power BI 
# it is best practices to first develop the script in a IDE like R Studio or RTVS. When your code is 
# working you can copy and paste it into the R editor in Power BI.

# In this example we will use the "readr" package to load the data. The functions that we will be using
# are similar to the functions in base R but they are optimized to perform better.
library(readr)


# It is best practice to set a working directory. Your working directory is the location that warehouses
# all of the files that you will be using in your session. Using a working directory enables you to reference
# your files by name without having to tell R the full path.

path = "<your working directory>"
setwd(path)


# This is an example of a simple data load. R reads the contents of the specified file and places it into 
# a data frame. To you MS Excel users a data frame is like an Excel table but with many more features!

data <- read_csv("20081028.CLEBOS.csv")


# When you load data into R it will make a decision on what data type to give your columns if you don't explicity 
# tell it what data types you want. It does so by scanning a subset of the data in each column to determine what 
# data type to use. You can explicitly tell R what data types to use. Some of the available data types that you can
# are below. I listed the long name and short name of each data type.
#
# Long form   |    Short form
#-----------------------------
# character   |     c 
# integer     |     i 
# number      |     n
# double      |     d
# logical     |     l 
# date        |     D 
# date time   |     T 
# time        |     t 
#-----------------------------
# 
# If you want to minimize the code that you write you can use the short name which are the single characters that you
# see above and specity what data type you want for each field. We have 32 fields in the data set that we are loading below.
# If I wanted to change all fields to a "character" variable type I can do so by concatenating 32 c's and passing it to the 
# col_types parameter! How dope is that!
 
data <- read_csv(file, col_types = "cccccccccccccccccccccccccccccccc")




