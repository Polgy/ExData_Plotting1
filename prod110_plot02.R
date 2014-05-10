png(file = "Plot2.png",width = 480, height = 480, units = "px", pointsize = 12,
    bg = "transparent")
plot(powerD$DT, type="l", powerD$Global_active_power, ylab="Global Active Power (kilowatts)", xlab="", main="")
dev.off()