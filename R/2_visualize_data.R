#########################################################################
#
# Demo script - visualization
#
#########################################################################

# read data
temp_day_avg <- read.csv("./data/modified/temperatur_daily_avg.csv")

# plot data
library(lubridate)
temp_day_avg$date_iso <- ymd(temp_day_avg$date_iso)
plot(temp_day_avg$date_iso,temp_day_avg$daily_avg,type="l",
     ylab="temperture C",xlab = "Date")
