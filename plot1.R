# Coursera Exploratory Data Analysis - Week 1 Project
# Plot 1 - Global Active Power
data <- read.table("./household_power_consumption.txt", header= TRUE, sep = ";")
# convert the date variable
library(lubridate)
data$Date <- dmy(data$Date)
library(dplyr)
# filter for just the two dates on the larger dataset
data <- filter(data, data$Date == "2007-02-01" | data$Date =="2007-02-02")
data$Global_active_power <- as.numeric(data$Global_active_power)
#make the plot
hist(data$Global_active_power,
     xlab = "Global Active Power (kilowatts)",
     col = "red",
     main = "Global Active Power")
dev.copy(png, file = "plot1.png") # copies myplot to a PNG device
dev.off()  # Don't forget to close the PNG device!!!
