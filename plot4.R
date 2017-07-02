household<-read.table("household_power_consumption.txt",colClasses = "character",header=TRUE,sep=";",na.strings="?")
household_sub<-subset(household,Date=="2/2/2007" |Date=="1/2/2007")
household_sub$Time<-strptime(paste(household_sub$Date,household_sub$Time),"%d/%m/%Y %H:%M:%S")



png(filename="plot4.png")
par(mfrow = c(2, 2))

plot(household_sub$Time,household_sub$Global_active_power,xlab="",ylab="Global Active Power(kilowatts)",type="l")

plot(household_sub$Time,household_sub$Voltage,xlab="datetime",ylab="Voltage",type="l")

plot(household_sub$Time,household_sub$Sub_metering_1,xlab="",ylab="Energy sub metering",type="l")
points(household_sub$Time,household_sub$Sub_metering_2,type="l",col="red")
points(household_sub$Time,household_sub$Sub_metering_3,type="l",col="blue")
legend("topright",lty=1,col=c("black","red","blue"),bty = "n",box.lty=0,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(household_sub$Time,household_sub$Global_reactive_power,xlab="datetime",ylab="Global_reactive_power",type="l")
dev.off()

