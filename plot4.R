#Run first 14 lines of plot1.R to create the data set

# Plot 4
png(file = "plot4.png", bg = "white", width = 480, height = 480, units = "px")

par(mfcol = c(2,2))                             

plot(Time,EPC$Global_active_power, type="l", xlab="", 
     ylab="Global Active Power (kilowatts)")

plot(Time, EPC$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(Time,EPC$Sub_metering_2, col="red")
lines(Time,EPC$Sub_metering_3, col="blue")
legend("topright", legend = names(EPC)[6:8],col = c("black","red","blue"), lty=1, bty="n")

plot(Time,EPC$Voltage, type="l", xlab="datetime", 
     ylab="Voltage")

plot(Time,EPC$Global_reactive_power, type="l", xlab="datetime", 
     ylab="Global_reactive_power")

dev.off()




