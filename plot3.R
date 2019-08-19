library(dplyr)
library(magrittr)
library(lubridate)

################################################################################

#   Plot 3

################################################################################
plot(df_small$Sub_metering_1~df_small$date_time,
     col = "black",
     xlab = "",
     ylab = "Energy sub metering",
     type = "l")

lines(df_small$Sub_metering_2~df_small$date_time,
      col = "red")

lines(df_small$Sub_metering_3~df_small$date_time,
      col = "blue")

legend("topright",
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lwd = c(1,1,1),
       col = c("black", "red", "blue"))


dev.copy(png, "plot3.png", width=480, height=480)

dev.off()

