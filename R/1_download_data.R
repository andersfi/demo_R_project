#########################################################################
#
# Demo script
#
#########################################################################

#-----------------------------------------------------------------------
# Download data from external source. This is best practice for making 
# your code transportable among different computers. 
#-----------------------------------------------------------------------

# first create new folder (./data/raw_data) to store the files 
# locally (cache down the data) - remember to update gitignore folder (add 
# the line */data/raw_data to the .gitignore file)
dir.create("data/raw_data", showWarnings = FALSE, recursive = TRUE)

# download data and save to ./data/raw_data (note the use of relative paths)
URL <- "https://ndownloader.figshare.com/files/20551587"
download.file(url=URL,destfile="./data/raw_data/temperatur.csv")  

# open file
temperature <- read.csv("./data/raw_data/temperatur.csv")





  
  