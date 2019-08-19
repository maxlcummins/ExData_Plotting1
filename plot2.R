library(dplyr)
library(magrittr)
library(lubridate)

################################################################################

#   Plot 2

################################################################################
plot(df_small$Global_active_power~df_small$date_time,
     xlab = "",
     ylab = "Global Activate Power (kilowats)",
     type = "l")

dev.copy(png, "plot2.png", width=480, height=480)

dev.off()

