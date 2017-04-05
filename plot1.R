# Data load
mydata <-read.table("household_power_consumption.txt", header = TRUE, sep=";", 
                    na.strings = "?")
library(dplyr)
# data from the dates 2007-02-01 and 2007-02-02 

mydata2 <- mydata %>% mutate(Date = as.Date(Date, "%d/%m/%Y")) %>%                  
        filter(Date == "2007-02-01" | Date == "2007-02-02")

# Creating New Time Variable
Time <- strptime(paste(mydata2$Date, mydata2$Time), format="%Y-%m-%d %H:%M:%S")

# Working data set
EPC<- cbind(Time, mydata2[,3:9])

# Plot 1
png(file = "plot1.png", bg = "transparent", width = 480, height = 480, units = "px")

hist(EPC$Global_active_power, col="red", xlab="Global Active Power (kilowatts)", 
     ylab="Frequency", main="Global Active Power")

dev.off()



