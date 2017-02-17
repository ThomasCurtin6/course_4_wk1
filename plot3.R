#Load some libraries I like to work with
setwd("c:/Users/e41538/Desktop/github/Course_4_wk1/ExData_Plotting1")
source("getdata.r")

dev.off(dev.list()["RStudioGD"])
plot.new()

with(mydata,plot(rdate2, as.numeric(as.character(Sub_metering_1)), type="l", xlab="", ylab="Energy sub metering", ylim=c(0,35)))
with(mydata,lines(rdate2, as.numeric(as.character(Sub_metering_2)), col="red"))
with(mydata,lines(rdate2, as.numeric(as.character(Sub_metering_3)), col="blue"))
legend("topright",  col = c("black", "red", "blue"),lty=1, legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3" )) 

dev.copy(png, file="plot3.png", height=480, width=480) 
dev.off() 
