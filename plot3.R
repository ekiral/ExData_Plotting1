#datam <-readData()

par(mfcol = c(1,1))

plot(x = datam$Time, y = datam$Sub_metering_1, type = "l", ylab = "Energy sub metering", xlab = "")
lines(x = datam$Time, y = datam$Sub_metering_2, col = "red")
lines(x = datam$Time, y = datam$Sub_metering_3, col = "blue")

legend("topright", c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),  
       lty = c(1,1), col = c("black", "red","blue"))

dev.copy(png,"plot3.png")
dev.off()
