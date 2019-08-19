library(dplyr)
library(magrittr)

################################################################################

#   Plot 1

################################################################################
hist(x = df_small$Global_active_power,
     main = "Global Active Power",
     col = "red",
     xlab = "Global Active Power (kilowatts)")

dev.copy(png, "plot1.png", width=480, height=480)

dev.off()

