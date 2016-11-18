POW <- read.table("F:/data science JH/HouPowCon.txt ",
                                      header = TRUE,
                                      sep = ";")
POW$DateTime<-paste(POW$Date, POW$Time)
POW$DateTime<-strptime(POW$DateTime, "%d/%m/%Y %H:%M:%S")

start<-which(POW$DateTime==strptime("2007-02-01", "%Y-%m-%d"))

end<-which(POW$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))

data <-POW[start:end,]
hist(as.numeric(as.character(POW$Global_active_power)),  
     main="Global Active Power",
     xlab="Global Active Power (KWATTS)", col="red")


plot(data$DateTime, as.numeric(as.character(data$Global_active_power)),
     type='l',ylab="Global Active Power (Kilowatts)", xlab="")



dev.copy(png,file="F:/data science JH/plot2.png ")
dev.off()
