
Data <- read.table("household_power_consumption_2days.txt", sep = ";", header = TRUE)
png("plot2.png",480,480)
plot(1:nrow(Data),Data$Global_active_power,xlab="",ylab= "Global_active_power (kilowatts)",xaxt="n",type= "l")
axis(1,at=c(1,1441,2880),labels=c("Thu","Fri","Sat"))
dev.off()