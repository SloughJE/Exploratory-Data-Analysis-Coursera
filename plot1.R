# Exploratory Data Analysis Project 1
# plot 1.R

# set working directory
setwd("~/Desktop/Coursera/Exploratory Data Analysis/Project 1")
# load household power consumption dataset
power=read.table("household_power_consumption.txt",header=TRUE, sep=';', na.strings="?", check.names=FALSE, stringsAsFactors=FALSE, comment.char="", quote='\"')
# convert date into correct format
power$Date=as.Date(power$Date,format="%d/%m/%Y")
power2 = subset(power, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime = paste(as.Date(power2$Date), power2$Time)
power2$Datetime = as.POSIXct(datetime)

# plot 1.png
hist(power2$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
