#########################################################################
#
# Demo script - download data
#
#########################################################################

#-----------------------------------------------------------------------
# Download data from external source. This is best practice for making 
# your code transportable among different computers.. 
#-----------------------------------------------------------------------

# first create new folder (./data/raw_data) to store the files 
# locally (cache down the data) - remember to update gitignore folder (add 
# the line */data/raw_data to the .gitignore file)
dir.create("data/raw_data", showWarnings = FALSE, recursive = TRUE)

# download data and save to ./data/raw_data (note the use of relative paths)
URL <- "https://ndownloader.figshare.com/files/20551587"
download.file(url=URL,destfile="./data/raw_data/temperatur.csv")  

# open file and modify something...
temperature <- read.csv("./data/raw_data/temperatur.csv")

# get averege dailly temp
library(dplyr)
temparture_average <- temperature %>% 
  group_by(date) %>%
  summarise(daily_avg = mean(temperature_c)) 

# make dates into something readable (ie. iso date format)
library(lubridate)
library(stringr)
temparture_average2 <- temparture_average %>%
  mutate(day =  str_sub(date, start = 0, end = 2),
         mnt =  str_sub(date, start = 4, end = 5),
         yr =  str_sub(date, start = 7, end = 8)) %>%
  mutate(yr = paste0("20",yr)) %>%
  mutate(date_iso = paste0(yr,"-",mnt,"-",day)) %>%
  mutate(date_iso = ydm(date_iso))

# save daily averages, first make new directory for saving
dir.create("data/modified", showWarnings = FALSE, recursive = TRUE)
write.csv(temparture_average2,"./data/modified/temperatur_daily_avg.csv")




  
  