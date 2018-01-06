library(reshape2)
#file<- "/Users/dana/Library/Mobile Documents/com~apple~CloudDocs/Data Science specialization/Exploratory data analysis/Week1/household_power_consumption.txt"
file<- "/Users/dana/Library/Mobile Documents/com~apple~CloudDocs/Data Science specialization/Exploratory data analysis/Week1/smaller.txt"
Input_txt<-read.csv.sql(file, sep = ";", sql = "select * from file where Date =\"1/2/2007\" OR Date =\"2/2/2007\"")
View(Input_txt)
png(filename = "plot1.png", width = 480, height = 480, units = "px")
hist(Input_txt$Global_active_power, freq = TRUE, col="red", main = "Global Active Power", xlab = "Global Active Power (Kilowatts)", ylab = "Frequency", plot = TRUE)
dev.off()

