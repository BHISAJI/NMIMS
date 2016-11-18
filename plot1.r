POW <- read.table("F:/data science JH/HouPowCon.txt ",
                                    header = TRUE,
                                    sep = ";")
POW$Date<- as.Date(POW$Date, "%d/%m/%Y")
p1<-subset(POW,Date==as.Date("2007-02-01") | Date==as.Date("2007-02-02"))
GAP<-p1$Global_active_power
GAP<-as.data.frame(GAP)
GAP<-(as.numeric(as.matrix(GAP)))
hist(GAP,col="RED",main = "Globel Active Power ",ylab="Frequency",xlab="Globel Active Power(KWATTS)")
dev.copy(png,file="F:/data science JH/plot1.png ")
dev.off()