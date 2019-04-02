#opening png file
png("plot2.png", width = 480, height = 480)

#reeading and subsetting
data<-data.table::fread("household_power_consumption.txt",na.strings = "?")
data<-subset(data,data$Date=="1/2/2007"| data$Date=="2/2/2007")

#plotting
plot(x, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(x, data$Sub_metering_2, col = "red")
lines(x, data$Sub_metering_3, col = "blue")
legend("topright", lty = 1, legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), col = c("black", "red", "blue"), cex = 0.55)
dev.off()


