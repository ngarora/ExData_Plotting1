## Getting full dataset
all_data <- read.csv("./household_power_consumption.txt", header=T, sep=';', na.strings="?", 
nrows=2075259, check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

## Convert dates to the DD-MM-YY format
all_data$Date <- as.Date(all_data$Date, format="%d/%m/%Y")

## Extracting the desired subset of data
mydata <- subset(all_data, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))

## Remove Complete dataset keeping the required dataset only
rm(all_data)

## Converting dates to desired format
datetime <- paste(as.Date(data$Date), data$Time)
data$Datetime <- as.POSIXct(datetime)

## Plotting the data
plot(data$Global_active_power~data$Datetime, type="l", ylab="Global Active Power (kilowatts)", xlab="")

## Saving Plot1 to png file with specified dimensions
dev.copy(png, file="plot2.png", height=480, width=480)
dev.off()
