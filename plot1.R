#reading the downloaded data from work directory
data<- read.table("household_power_consumption.txt", skip = 1, sep = ";")
names(data) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
#subseting consumption data
subdata <- subset(data, data$Date == "1/2/2007" | data$Date == "2/2/2017")
#calling basic plot function
hist(as.numeric(subdata$Global_active_power), col = "red", main = "Global Active Power", xlab = "Global Active Power(Kilowatts)")
#plotting in png
png("plot1.png", width=480, height=480)
dev.off()
