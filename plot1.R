#datam<-readData()

par(mfcol= c(1,1))
hist(datam$Global_active_power, main = "Global Active Power", 
     xlab = "Global Active Power (kilowatts)", col = "red")

dev.copy(png, "plot1.png")
dev.off()

