library(dplyr)
library(magrittr)

Wk1_wd <- "Exploratory_data_analysis/Week1/Project"

setwd(Wk1_wd)


if(!dir.exists("Power_consumption")){
  URL <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
  download.file(URL, "Power_consumption.zip", method = "curl")
  unzip(zipfile = "Power_consumption.zip", exdir = "Power_consumption")
}

df <- read.csv("Power_consumption/household_power_consumption.txt",
               sep = ";",
               na.strings = "?",
               colClasses = c('character','character','numeric',
                              'numeric','numeric','numeric',
                              'numeric','numeric','numeric'),
               stringsAsFactors = FALSE)

df_small <- df %>% filter(Date %in% c("1/2/2007", "2/2/2007"))

df_small$Date <- as.Date(df_small$Date, "%d/%m/%Y")

date_time <- paste(df_small$Date, df_small$Time, sep = " ")

date_time <- strptime(date_time, "%Y-%m-%d %H:%M:%S")

df_small <- cbind(df_small, as.POSIXct(date_time))

colnames(df_small)[ncol(df_small)] <- "date_time"

write.csv(df_small, "df_small.csv", row.names = FALSE)
