#Title


#A function for input the sampling date
readSamplingDate <- function()
{ 
  sd <- readline(prompt="Enter the sampling date (year-month-day): ")
  return(sd)
  
}
samplingDate<-readSamplingDate()


#A function for input the sampling time
readSamplingTime <- function()
{ 
  st <- readline(prompt="Enter the sampling time (hour:minute:second): ")
  return(st)
  
}
samplingTime<-readSamplingTime()

#Date transformation

samplingDATE<-as.POSIXct(paste(samplingDate,samplingTime), format="%Y-%m-%d %H:%M:%S")

# Next Rscript:





  