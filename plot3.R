#plot3
#Author: Haibin Li
#Email:15910681644@126.com
#Date:07-18-2016

setwd("C:\\Users\\lhb-pc\\Desktop\\RCourse\\EDA\\RClass\\exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",sep=";",header=T,na.strings="?")
data$Time <- strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

total <- subset(data,Date==as.Date("2007/02/01")|Date==as.Date("2007/02/02"))
Sys.setlocale("LC_TIME","English")

attach(total)
png("plot3.png", width=480, height=480)
plot(Time, as.numeric(Sub_metering_1), type="l", col = "black", ylab="Energy sub metering", xlab="")
lines(Time, as.numeric(Sub_metering_2), type="l", col = "red")
lines(Time, as.numeric(Sub_metering_3), type="l", col = "blue")
legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), pch = 1, col = c("black","red", "blue"))
dev.off()