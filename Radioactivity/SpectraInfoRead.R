#Title

#General CSV reading rule...... later


#A function for input the spectra id

  readSpectraFile <- function()
  { 
  sn <- readline(prompt="Enter the first measure ID (.csv file): ")
  return(sn)
  }

  spectName1<-readSpectraFile()

#Read basic acquisition data from the CSV file for the first measure
  readAcqinfo1<- read.csv(spectName1, nrows=4)

#Counting time read
  countTime1<-readAcqinfo1[4,8]
#Date read and date transformation
  
  spectDate1<-readAcqinfo1[3,3]
  spectTime1<-readAcqinfo1[3,5]

  spectDATE1<-as.POSIXct(paste(spectDate1,spectTime1), format="%m-%d-%Y %H:%M:%S")


#Decay time in secs
  decayTime1<- as.numeric(difftime(spectDATE1,samplingDATE), unit=c("secs"))
  
# And now the same way for the second spectra
  readSpectraFile <- function()
  { 
    sn <- readline(prompt="Enter the second measure ID (.csv file): ")
    return(sn)
  }
  
  spectName2<-readSpectraFile()
  
  
  readAcqinfo2<- read.csv(spectName2, nrows=4)
  
  
  countTime2<-readAcqinfo2[4,8]
  
  spectDate2<-readAcqinfo2[3,3]
  spectTime2<-readAcqinfo2[3,5]
  spectDATE2<-as.POSIXct(paste(spectDate2,spectTime2), format="%m-%d-%Y %H:%M:%S")
  
  decayTime2<- as.numeric(difftime(spectDATE2,samplingDATE), unit=c("secs"))


#Spar some memory
  rm(readAcqinfo1,readAcqinfo2)
  rm(spectTime1,spectTime2,spectDate1,spectDate2)
 
  
  # Next Rscript:

  
