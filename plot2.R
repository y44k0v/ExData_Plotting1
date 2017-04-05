#Run first 14 lines of plot1.R to create the data set

# Plot 2

png(file = "plot2.png", bg = "white", width = 480, height = 480, units = "px")

plot(Time,EPC$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")

dev.off()


