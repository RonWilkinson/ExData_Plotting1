setwd("P:/Programs/R/Exploratory Data Analysis/Data")

epc.df <- read.delim("household_power_consumption.txt", sep=";", na.strings="?",as.is=TRUE)

epc.df <- epc.df[ epc.df$Date=="1/2/2007" | epc.df$Date=="2/2/2007",]

png("plot1.png")
hist(epc.df$Global_active_power,col="red",xlab="Global Active Power (kilowatts)",
     main="Global Active Power")
dev.off()