library(dplyr)
library(magrittr)
library(lubridate)

################################################################################

# Plot 4
################################################################################

par(mfrow=c(2,2))

#   Plot 4a
################################################################################


plot(df_small$Global_active_power~df_small$date_time,
     xlab = "",
     ylab = "Global Activate Power (kilowats)",
     type = "l")


################################################################################
#   Plot 4b
################################################################################


plot(df_small$Voltage~df_small$date_time,
     xlab = "datetime",
     ylab = "Voltage",
     type = "l")


################################################################################
#   Plot 4c
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

################################################################################
#   Plot 4d
################################################################################


plot(df_small$Global_reactive_power~df_small$date_time,
     xlab = "datetime",
     ylab = "Global_reactive_power",
     type = "l")

################################################################################

dev.copy(png, "plot4.png", width=480, height=480)

dev.off()

