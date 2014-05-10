##### setting numeric data types
powerD[,Voltage:=as.double(Voltage)]
powerD[,Global_active_power:=as.double(Global_active_power)]
powerD[,Global_reactive_power:=as.double(Global_reactive_power)]
powerD[,Global_intensity:=as.double(Global_intensity)]
powerD[,Sub_metering_1:=as.double(Sub_metering_1)]
powerD[,Sub_metering_2:=as.double(Sub_metering_2)]
powerD[,Sub_metering_3:=as.double(Sub_metering_3)]
