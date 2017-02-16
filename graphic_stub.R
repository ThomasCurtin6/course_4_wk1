#Load some libraries I like to work with
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

mydata<-(tbl_df(fread(dataname,sep=";",header="auto", na.strings="?")))  # read the datafile
mydata <- mydata[(mydata$Date=="1/2/2007" | mydata$Date=="2/2/2007" ), ] # filter out the two days we need
mydata<-mutate(mydata,rdate=as_date(Date))
mydata<-mutate(mydata,rtime=strptime(mydata$Time,format= "%H:%M:%S"))
mean(mydata$rtime,na.rm=TRUE)