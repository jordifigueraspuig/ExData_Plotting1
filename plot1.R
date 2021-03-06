#library(datasets)
household<-read.table("household_power_consumption.txt",colClasses = "character",header=TRUE,sep=";",na.strings="?")
household_sub<-subset(household,Date=="2/2/2007" |Date=="1/2/2007")
household_sub$Global_active_power<-as.numeric(household_sub$Global_active_power)
png(filename="plot1.png")
hist(household_sub$Global_active_power,col="red",main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
