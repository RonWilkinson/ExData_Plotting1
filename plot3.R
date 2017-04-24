epc.df <- read.delim("household_power_consumption.txt", sep=";", na.strings="?",as.is=TRUE)

epc.df <- epc.df[ epc.df$Date=="1/2/2007" | epc.df$Date=="2/2/2007",]

epc.df$Date_Time <- strptime( paste( epc.df$Date, epc.df$Time), format="%d/%m/%Y %H:%M:%S")

png("plot3.png")
with( epc.df, {
      plot(  Date_Time, Sub_metering_1, type="l", col="black", xlab="", ylab="Energy sub metering")
      lines( Date_Time, Sub_metering_2, type="l", xlab="", col="red")
      lines( Date_Time, Sub_metering_3, type="l", xlab="", col="blue")
      legend("topright", lty=1, col=c("black","red","blue"), 
             legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
             }
      )
dev.off()
