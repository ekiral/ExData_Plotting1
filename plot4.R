#datam<- readData()

par(mfcol = c(2,2), oma = c(1,1,0,0) + 0.1, mar = c(4,4,1,1) + 0.1)

plot(x = datam$Time, y = datam$Global_active_power, type = "l", 
     xlab = "", ylab= "Global Active Power (kilowatts)")

plot(x = datam$Time, y = datam$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(x = datam$Time, y = datam$Sub_metering_2, col = "red")
lines(x = datam$Time, y = datam$Sub_metering_3, col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  
       lty = c(1,1), col = c("black", "red","blue"), y.intersp = 0.5,bty = "n",
       inset = -0.05, cex = 0.7)

plot(x = datam$Time, y = datam$Voltage, type = "l", xlab = "datetime", ylab = "Voltage")

plot(x = datam$Time, y = datam$Global_reactive_power, 
     type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.copy(png,"plot4.png")
dev.off()