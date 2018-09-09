#Title

#Peaklists the CSV file
  readData1<-read.csv(spectName1, skip =8 ) 
  readData2<-read.csv(spectName2, skip =8 )

#Select apropraiate data for nuclid identification and activity calculation
  peakData1<-data.frame(readData1$X.Energy,readData1$X....Area,readData1$Sigma.5,"01")
  peakData2<-data.frame(readData2$X.Energy,readData2$X....Area,readData2$Sigma.5,"02")

  nrowPeakdata1<-nrow(peakData1)
  nrowPeakdata2<-nrow(peakData2)

# If conditional for handle the dual spectra (identify, and reduce the number of the peaks)
  
  if ( isTRUE(all.equal(peakData1[nrowPeakdata1,1],peakData1[nrowPeakdata1/2,1], tolerance=0.01)) )
  {
    peakData1<-peakData1[1:(nrowPeakdata1/2),]
    
  } else{message("Spectra 1 maybe not a dual-spectra!")}
  
  if ( isTRUE(all.equal(peakData2[nrowPeakdata2,1],peakData2[nrowPeakdata2/2,1], tolerance=0.1)) )
  {
    peakData2<-peakData2[1:(nrowPeakdata2/2),]
    
  } else{message("Spectra 2 maybe not a dual-spectra!")}
  
#Spar some memory
  rm(readData1,readData2)
  rm(nrowPeakdata1,nrowPeakdata2)

  
  
# Next Rscript: 