#opening png file
#png("plot1.png", width = 480, height = 480)

#reading and subsetting
data<-data.table::fread("household_power_consumption.txt",na.strings = "?")
data<-subset(data,data$Date=="1/2/2007"| data$Date=="2/2/2007")

#creating base plot
hist(as.numeric(as.character(data$Global_active_power)), col = "red", main = "Global Active Power", xlab="Global Active Power(KW)" )

#annotating the graph
title("Global Active Power")

#dev.off()