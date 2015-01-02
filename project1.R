# Exploratory Data Analysis

setwd("~/Desktop/Coursera/Exploratory Data Analysis/Project 1")

power=read.table("household_power_consumption.txt",header=TRUE, sep=';', na.strings="?"
                , check.names=FALSE, stringsAsFactors=FALSE, comment.char="", quote='\"')

power$Date=as.Date(power$Date,format="%d/%m/%Y")
power2 = subset(power, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
datetime = paste(as.Date(power2$Date), power2$Time)
power2$Datetime = as.POSIXct(datetime)

# plot 1
hist(power2$Global_active_power, col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")

# plot 2
plot(power2$Datetime,power2$Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(power2$Datetime,power2$Global_active_power)

# plot 3
plot(power2$Datetime,power2$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(power2$Datetime,power2$Sub_metering_1)
lines(power2$Datetime,power2$Sub_metering_2,col="red")
lines(power2$Datetime,power2$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1,1))

#plot 4
par(mfrow=c(2,2), mar=c(4,4,2,1), oma=c(0,0,2,0))
plot(power2$Datetime,power2$Global_active_power,type="n",xlab="",ylab="Global Active Power (kilowatts)")
lines(power2$Datetime,power2$Global_active_power)

plot(power2$Datetime,power2$Voltage,type="n",xlab="",ylab="Voltage")
lines(power2$Datetime,power2$Voltage)

plot(power2$Datetime,power2$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
lines(power2$Datetime,power2$Sub_metering_1)
lines(power2$Datetime,power2$Sub_metering_2,col="red")
lines(power2$Datetime,power2$Sub_metering_3,col="blue")
legend("topright", legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),col=c("black","red","blue"), lty=c(1,1,1),bty="n")

plot(power2$Datetime,power2$Global_reactive_power,type="n",xlab="",ylab="Global_reactive_power")
lines(power2$Datetime,power2$Global_reactive_power)

