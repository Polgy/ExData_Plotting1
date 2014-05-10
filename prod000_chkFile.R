
dir <- { if (file.exists("C:/Temp"))
        "c:/Temp"
        else
          "./"
      }

pF<-'household_power_consumption.txt'


powerDataFile <- {
  cTempFile <- sprintf("%s/%s", "c:/temp", pF)
  locFile <- sprintf("%s/%s", "./", pF)
  if (file.exists(cTempFile))
    cTempFile
  else if (file.exists(pF))
    pF
  else
    stop ("did not locate uncompressed file. Stopped.")
    ## this is machine-dependent
    ## download.file(url="https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip",
    ##    method=curl, destfile="c:/temp/housing.zip")
    ## system("unzip  c:/temp/housing.zip")
}

source("chkPkgs.R")
checkPkgs("data.table")
