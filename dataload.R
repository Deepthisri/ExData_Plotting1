setwd("C:\\Users\\a552344\\Desktop\\scripts")
if(!file.exists("household_power_consumption.txt")) {
     download.file("https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",zptmp)
    tdf<- unzip(zptmp)
    }
elecpwr <- read.table(tdf, header=T, sep=";")
elecpwr$Date <- as.Date(elecpwr$Date,"%d/%m/%Y")
 finaldata <- elecpwr[(elecpwr$Date=="2007-02-01")| (elecpwr$Date=="2007-02-02"),]
# convert date and time variables to Date/Time class
finaldata <- transform(finaldata, timestamp=as.POSIXct(paste(Date, Time)), "%d/%m/%Y %H:%M:%S")
finaldata$Global_active_power <- as.numeric(as.character(finaldata$Global_active_power))
finaldata$Global_reactive_power <- as.numeric(as.character(finaldata$Global_reactive_power))
finaldata$Voltage <- as.numeric(as.character(finaldata$Voltage))
finaldata$Sub_metering_1 <- as.numeric(as.character(finaldata$Sub_metering_1))
finaldata$Sub_metering_2 <- as.numeric(as.character(finaldata$Sub_metering_2))
finaldata$Sub_metering_3 <- as.numeric(as.character(finaldata$Sub_metering_3))