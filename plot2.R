#opening png file
png("plot2.png", width = 480, height = 480)

#reading and subsetting
data<-data.table::fread("household_power_consumption.txt",na.strings = "?")
data<-subset(data,data$Date=="1/2/2007"| data$Date=="2/2/2007")

#transforming the date and time from char type date and POSIXlt
x <- (strptime(paste(data$Date, data$Time), format="%d/%m/%Y %H:%M:%S"))

#plotting
plot(x, data$Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")


dev.off()