
Data <- read.table("household_power_consumption_2days.txt", sep = ";", header = TRUE)
png("plot3.png",480,480)
plot(1:nrow(Data),Data$Sub_metering_1,xlab="",ylab= "Energy sub metering",xaxt="n",type= "l",col="black")
par(new=TRUE) 
plot(1:nrow(Data),Data$Sub_metering_2,xlab="",ylab= "",xaxt="n",yaxt="n",ylim=c(min(Data$Sub_metering_1),max(Data$Sub_metering_1)),type= "l",col="red")
par(new=TRUE) 
plot(1:nrow(Data),Data$Sub_metering_3,xlab="",ylab= "",xaxt="n",yaxt="n",ylim=c(min(Data$Sub_metering_1),max(Data$Sub_metering_1)),type= "l",col="blue")

axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
legend("topright",col=c("black","red","blue"),lty=1,legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3")) 
dev.off()