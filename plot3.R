# Coursera Exploratory Data Analysis - Week 1 Project
# Plot 3 - Global Active Power Line Chart - plotting stacked 3 variables
data <- read.table("./household_power_consumption.txt", 
                   header = TRUE, 
                   sep = ";",
                   skip = 66636, #data from the dates 2007-02-01 and 2007-02-02
                   nrows = 2880,
                   stringsAsFactors = FALSE)
names(data) <- list("Date", "Time", "Global_active_power",
                    "Global_reactive_power", "Voltage", "Global_intensity",
                    "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
data$Time2 <-paste(data$Date, data$Time)

# Set up the plot
library(ggplot2)
ggplot(data, aes(strptime(data$Time2, "%d/%m/%Y %H:%M:%S"))) + 
  geom_line(aes(y = data$Sub_metering_1, color="Sub_metering_1")) + 
  geom_line(aes(y = data$Sub_metering_2, color="Sub_metering_2")) + 
  geom_line(aes(y = data$Sub_metering_3, color="Sub_metering_3")) + 
  ylab(label="Energy sub metering") + 
  xlab("") +
  theme(legend.title = element_blank(), 
        legend.justification = c(0, 1), legend.position = c(.7, .9)) 

#Create png file
dev.copy(png, file = "plot3.png") # copies myplot to a PNG device
dev.off()  # Don't forget to close the PNG device!!!

