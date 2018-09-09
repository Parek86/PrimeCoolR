#Title

#Create file names practicaly from the sampling date
infoFileName<-format.Date(samplingDATE, format="%Y%m%d_%H%M%S_info.csv")
peaklistFileName<-format.Date(samplingDATE, format="%Y%m%d_%H%M%S_peakl.csv")
evalFileName<-format.Date(samplingDATE, format="%Y%m%d_%H%M%S_eval.csv")

#create files
file.create(infoFileName, peaklistFileName,evalFileName)



#Spar some memory
#rm(samplingDate,samplingTime)

#Write stg to files

  #write.....

# Next Rscript: