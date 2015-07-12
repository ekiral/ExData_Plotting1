#datam <- readData()

par(mfcol = c(1,1))
plot(x = datam$Time, y = datam$Global_active_power, type = "l", 
     xlab= "", ylab= "Global Active Power (kilowatts)")

dev.copy(png, "plot2.png")
dev.off()