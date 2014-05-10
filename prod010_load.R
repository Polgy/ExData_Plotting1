## 00_load_Script
library(data.table)
powerDataFile<-'c:/temp/household_power_consumption.txt'

f<-fread(powerDataFile, nrows=99)
fClasses<-sapply(f, class)
powerD<-fread(powerDataFile, colClasses=unname(fClasses), na.strings="?", skip=66637, nrow=2880)
setnames(powerD, names(powerD),names(f))
#this is not required since we already filtered rows we needed to read but in case someone passes us full dataset:
setkey(powerD, Date)
powerD<-powerD[J(c("1/2/2007","2/2/2007"))]
#pOrig<-copy(powerD)
# row count of 2880 suggests we set skip and nrow correctly; This save me dev time on re-runs.

### Data munging/transformations
#### adding date field to the data.table
powerD[,DT:=as.POSIXct(strptime(sprintf("%s;%s",Date, Time), format="%d/%m/%Y;%H:%M:%S"))]
