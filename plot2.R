file<- "/Users/dana/Library/Mobile Documents/com~apple~CloudDocs/Data Science specialization/Exploratory data analysis/Week1/smaller.txt"
Input_txt<-read.csv.sql(file, sep = ";", sql = "select * from file where Date =\"1/2/2007\" OR Date =\"2/2/2007\"")
View(Input_txt)
png(filename = "plot2.png", width = 480, height = 480, units = "px")
plot((strptime(paste(Input_txt$Date, Input_txt$Time),format = "%d/%m/%Y %H:%M:%S")), Input_txt$Global_active_power, type="l", ylab = "Global Active Power (Kilowatts)", xlab="")
#lines(Input_txt$Date, Input_txt$Global_active_power)
#pretty_dates(strftime(Input_txt$Date,'%A'), n=3)
dev.off()