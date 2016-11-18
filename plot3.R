POW <- read.table("F:/data science JH/HouPowCon.txt ",
                  header = TRUE,
                  sep = ";")
POW$DateTime<-paste(POW$Date, POW$Time)
POW$DateTime<-strptime(POW$DateTime, "%d/%m/%Y %H:%M:%S")

start<-which(POW$DateTime==strptime("2007-02-01", "%Y-%m-%d"))

end<-which(POW$DateTime==strptime("2007-02-02 23:59:00", "%Y-%m-%d %H:%M:%S"))

data <-POW[start:end,]


plot(data$DateTime, as.numeric(as.character(data$Sub_metering_1)),type='l', 
     ylab ="Energy sub metering", xlab="")
lines(data$DateTime, as.numeric(as.character(data$Sub_metering_2)),type='l', col='red')
lines(data$DateTime, data$Sub_metering_3,type='l', col="blue")
legend('topright', c("Sub_metering_1","Sub_metering_2","Sub_metering_3"),
       lty=c(1,1,1)
       ,col=c("black","red","blue"))
 



dev.copy(png,file="F:/data science JH/plot3.png ")
dev.off()
