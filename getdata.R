library(downloader)
library(data.table)
library(reshape2)
library(curl)

library(tidyr)
library(qdap)
library(dplyr)
library(lubridate)
setwd("c:/Users/e41538/Desktop/github/Course_4_wk1/ExData_Plotting1")
# 0.  Get the data
source<-"https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
zippy <-"power"
download(source,zippy,mode="wb")
unzip(zippy)

dataname<-"file:///C:/Users/e41538/Desktop/GitHub/course_4_wk1/ExData_Plotting1/household_power_consumption.txt"

mydata <-tbl_df(fread(dataname,sep=";",header="auto", na.strings="?"))  # read the datafile

mydata <-filter(mydata,mydata$Date%in%c("2/1/2007","2/2/2007"))

mydata <-mutate(mydata,rdate2=mdy_hms(paste(Date, Time,sep=" "),tz="UTC"))  #lubridate method change strings over to date and date time in case we need just day

mydata$Sub_metering_1 <- as.numeric(as.character(mydata$Sub_metering_1))  #set up sub metering field 1/2/3
mydata$Sub_metering_2 <- as.numeric(as.character(mydata$Sub_metering_2))
mydata$Sub_metering_3 <- as.numeric(as.character(mydata$Sub_metering_3))