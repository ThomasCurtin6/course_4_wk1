title: "codebook"
author: "Thomas Curtin"
date: "February 12, 2017"

#Dataset: Electric power consumption [20Mb]

https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip


•Description: Measurements of electric power consumption in one household with a one-minute sampling rate over a period of almost 4 years. Different electrical quantities and some sub-metering values are available.

The following descriptions of the 9 variables in the dataset are taken from the UCI web site:
1.Date: Date in format dd/mm/yyyy
2.Time: time in format hh:mm:ss
3.Global_active_power: household global minute-averaged active power (in kilowatt)
4.Global_reactive_power: household global minute-averaged reactive power (in kilowatt)
5.Voltage: minute-averaged voltage (in volt)
6.Global_intensity: household global minute-averaged current intensity (in ampere)
7.Sub_metering_1: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an   oven and a microwave (hot plates are not electric but gas powered).
8.Sub_metering_2: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light.
9.Sub_metering_3: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.

10 rdate2 -concatenated date/time for plotting produced by mutate command:

	   mydata <-mutate(mydata,rdate2=mdy_hms(paste(Date, Time,sep=" "),tz="UTC"))


#glimpse -mydata

Observations: 2,880 selected for the dates 2/1/2007 and 2/2/2007

Variables: 10
$ Date                  <chr> "2/1/2007", "2/1/2007", "2/1/2007", "2/1/2007", "2/1/200...
$ Time                  <chr> "00:00:00", "00:01:00", "00:02:00", "00:03:00", "00:04:0...
$ Global_active_power   <dbl> 0.442, 0.370, 0.368, 0.370, 0.370, 0.368, 0.368, 0.366, ...
$ Global_reactive_power <dbl> 0.122, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, 0.000, ...
$ Voltage               <dbl> 241.06, 241.22, 241.03, 241.41, 241.22, 241.03, 240.47, ...
$ Global_intensity      <dbl> 1.8, 1.6, 1.6, 1.6, 1.6, 1.6, 1.4, 1.4, 1.6, 1.6, 1.6, 1...
$ Sub_metering_1        <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,...
$ Sub_metering_2        <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,...
$ Sub_metering_3        <dbl> 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0,...
$ rdate2                <dttm> 2007-02-01 00:00:00, 2007-02-01 00:01:00, 2007-02-01 00...
 
