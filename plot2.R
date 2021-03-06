#plot2
#Author: Haibin Li
#Email:15910681644@126.com
#Date:07-18-2016

getwd()
setwd("C:\\Users\\lhb-pc\\Desktop\\RCourse\\EDA\\RClass\\exdata_data_household_power_consumption")

data <- read.table("household_power_consumption.txt",sep=";",header=T,na.strings="?")
data$Time <- strptime(paste(data$Date, data$Time, sep=" "),"%d/%m/%Y %H:%M:%S")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")

total <- subset(data,Date==as.Date("2007/02/01")|Date==as.Date("2007/02/02"))
Sys.setlocale("LC_TIME","English")
png("plot2.png", width=480, height=480)
with(total,plot(Time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))

dev.off()