readData<- function(){
  datafirst <- read.table("household_power_consumption.txt",sep = ";", 
                    colClasses = c(rep("character",2),rep("numeric",7)), 
                    header = TRUE, na.strings = "?")
  
  datafirst$Date <- as.Date(datafirst$Date, "%d/%m/%Y")
  
  datam <- subset(datafirst,mapply(function(x,y){x&&y}, (datafirst$Date <="2007-02-02"), 
                                   (datafirst$Date >= "2007-02-01")))

  t<- mapply(function(x,y){paste(c(x,y),collapse = " ")}, 
             format(datam$Date, format="%d/%m/%Y"), datam$Time)
  datam<- transform(datam, Time = strptime(t,format = "%d/%m/%Y %T"))
  
  datam
}

