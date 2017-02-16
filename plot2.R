#Load some libraries I like to work with
setwd("c:/Users/e41538/Desktop/github/Course_4_wk1/ExData_Plotting1")
source("getdata.r")

dev.off(dev.list()["RStudioGD"])
with(mydata,
     plot(mydata$rdate2,
     mydata$Global_active_power, 
    type="l", 
    xlab="", 
    ylab="Global Active Power (kilowatts)"
    ))
dev.copy(png, file="plot2.png", height=480, width=480) 
dev.off() 
