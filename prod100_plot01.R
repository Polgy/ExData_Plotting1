# prod100_plot01.R
#Plot 1
```{r plots,fig.width=480,fig.height=480,dependson=loadData}
# width and hight are 480x480 by default
png(file = "Plot1.png", width = 480, height = 480, units = "px", pointsize = 12, 
    bg = "transparent")
hist(powerD$Global_active_power,col="red",
     xlab="Global Active Power (kilowatts)", 
     main="Global Active Power")
dev.off()
```