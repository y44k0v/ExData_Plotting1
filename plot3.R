#Run first 14 lines of plot1.R to create the data set

# Plot 3

png(file = "plot3.png", bg = "white", width = 480, height = 480, units = "px")

plot(Time, EPC$Sub_metering_1, type="l", xlab="", ylab="Energy sub metering")
lines(Time,EPC$Sub_metering_2, col="red")
lines(Time,EPC$Sub_metering_3, col="blue")
legend("topright", legend = names(EPC)[6:8],col = c("black","red","blue"), lty=1)

dev.off()


