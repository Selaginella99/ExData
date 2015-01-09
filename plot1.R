
Data <- read.table("household_power_consumption_2days.txt", sep = ";", header = TRUE)
png("plot1.png",480,480)
hist(Data$Global_active_power,col="red",main = "Global_active_power",xlab= "Global_active_power (kilowatts)")
dev.off()