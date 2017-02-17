#Load some libraries I like to work with
setwd("c:/Users/e41538/Desktop/github/Course_4_wk1/ExData_Plotting1")
source("getdata.r")

dev.off(dev.list()["RStudioGD"])
par(mfrow=c(2,2))
title(main="Plot 4",col=blue)
with(mydata,plot(rdate2, as.numeric(as.character(Global_active_power)), type="l", xlab="", ylab="Global Active Power"))

with(mydata,plot(rdate2, as.numeric(as.character(Voltage)), type="l", xlab="datetime", ylab="Voltage"))

with(mydata,plot (rdate2, as.numeric(as.character(Sub_metering_1)), type="l", xlab="", ylab="Energy sub metering", ylim=c(0,35)))
with(mydata,lines(rdate2, as.numeric(as.character(Sub_metering_3)), col="blue") )
with(mydata,lines(rdate2, as.numeric(as.character(Sub_metering_2)), col="red"))

legend("topright", lty=1,  col = c("black", "red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" )) 

with(mydata,plot(rdate2, as.numeric(as.character(Global_reactive_power)), type="l", xlab="datetime", ylab="Global_reactive_power"))

dev.copy(png, file="plot4.png", height=480, width=480) 
dev.off() 
