#Load some libraries I like to work with
setwd("c:/Users/e41538/Desktop/github/Course_4_wk1/ExData_Plotting1")
source("getdata.r")

####   ok ready to plot

with(mydata,hist(Global_active_power,col="red",main="Global Active Power"))
     

#write the plot to a png file
## export file 
dev.copy(png, file="plot1.png", height=480, width=480) 
dev.off() 



