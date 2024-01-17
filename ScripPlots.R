##############Week 1 Exploratory Analysis ############

############# Loading the data ########

if(!file.exists("./data")){dir.create("./data")}
#Link of the data
fileUrl <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(fileUrl,destfile="./data/data.zip")

# Unzip dataSet to /data directory
unzip(zipfile="./data/data.zip",exdir="./data")

#read the data
epc <- read.table("./data/household_power_consumption.txt", header = TRUE, sep = ";")

dim(epc)
View(epc)
names(epc)
str(epc)

epc$Global_actice_power <- as.numeric(epc$Global_active_power)
epc$Global_reactive_power <- as.numeric(epc$Global_reactive_power)
epc$Global_intensity <- as.numeric(epc$Global_intensity)
epc$Voltage <- as.numeric(epc$Voltage)
epc$Sub_metering_1 <- as.numeric(epc$Sub_metering_1)
epc$Sub_metering_2 <- as.numeric(epc$Sub_metering_2)
epc$Sub_metering_3 <- as.numeric(epc$Sub_metering_3)
epc$Date <- as.Date(epc$Date, format = "%d/%m/%Y")
epc$Time <- strptime(epc$Time, format = "%H:%M:%S")

str(epc)

#We will only be using data from the dates 2007-02-01 and 2007-02-02

epc <- subset(epc, Date >= "2007-02-01" & Date <= "2007-02-02")

############ Creating plots ###############

#Plots are created on separeted files as is being required to be that way


