epc.df <- read.delim("household_power_consumption.txt", sep=";", na.strings="?",as.is=TRUE)

epc.df <- epc.df[ epc.df$Date=="1/2/2007" | epc.df$Date=="2/2/2007",]

epc.df$Date_Time <- strptime( paste( epc.df$Date, epc.df$Time), format="%d/%m/%Y %H:%M:%S")

png("plot2.png")
with( epc.df, plot(Date_Time, Global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)"))
dev.off()
