  # Coursera Exploratory Data Analysis - Week 1 Project
  # Plot 2 - Global Active Power Line Chart
  data <- read.table("./household_power_consumption.txt", 
                     header = TRUE, 
                     sep = ";",
                     skip = 66636, #data from the dates 2007-02-01 and 2007-02-02
                     nrows = 2880,
                     stringsAsFactors = FALSE)
  names(data) <- list("Date", "Time", "Global_active_power",
                        "Global_reactive_power", "Voltage", "Global_intensity",
                        "Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
  data$Time2 <- paste(data$Date, data$Time, sep=" ")
  data$Time3 <- 1:length(data$Time2)
  # Set up the plot
  library(ggplot2)
  ggplot(data, aes(data$Time3, Global_active_power)) + geom_line() +
    xlab("") + ylab("Global Active Power")
dev.copy(png, file = "plot2.png") # copies myplot to a PNG device
dev.off()  # Don't forget to close the PNG device!!!
