#opening png file
#png("plot4.png", width = 480, height = 480)

#reading and subsetting
data<-data.table::fread("household_power_consumption.txt",na.strings = "?")
data<-subset(data,data$Date=="1/2/2007"| data$Date=="2/2/2007")

#transforming the date and time from char type date and POSIXlt
x <- (strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"))

#plotting
par(mfrow = c(2,4), mar = c(2, 2, 2, 2))
with( data,{plot(x,data$Global_active_power, type = "l",xlab = "", ylab = "Global active power")
      plot(x, data$Voltage,type = "l",xlab = "datetime",ylab = "Voltage")
      plot(x, data$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
      lines(x, data$Sub_metering_2, col = "red")
      lines(x, data$Sub_metering_3, col = "blue")
      legend("topright", lty = 1, legend = c("Sub metering 1", "Sub metering 2", "Sub metering 3"), col = c("black", "red", "blue"), cex = 0.25)
      plot(x, data$Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
}
     
     )

#dev.off()

