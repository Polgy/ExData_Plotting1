png(file = "Plot3.png", width = 480, height = 480, units = "px", pointsize = 12,
    bg = "transparent")
plot(powerD[,Sub_metering_1]~ powerD$DT, type="n", ylab="Energy sub metering", 
     xlab="", main="", ylim=range(powerD$Sub_metering_1)
     )

with(powerD, lines(Sub_metering_1 ~ DT, col=1))
with(powerD, lines(Sub_metering_2 ~ DT, col=2))
with(powerD, lines(Sub_metering_3 ~ DT, col=4))
legend("topright", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       lty=c(1,1), # gives the legend appropriate symbols (lines)
       lwd=c(1,1),col=c(1,2,4)) # gives the legend lines the correct color and width
dev.off()