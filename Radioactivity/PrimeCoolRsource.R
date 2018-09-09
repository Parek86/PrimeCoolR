# The titel!!!!!!

#Cleaning first of all
  rm(list=ls())
  
  currDATE<-Sys.time()

  message("************************************************************")
  message("PrimeCool-R by Dénes párkányi, parkanyi.denes@energia.mta.hu")
  message("************************************************************")





#A function for input the sampling date

  readName <- function()
  { 
  an <- readline(prompt="Enter the analyst name: ")
  return(an)
  
  }
  analystName<-readName()

  readName <- function()
  { 
    en <- readline(prompt="Enter the analyst name: ")
    return(en)
    
  }
  evalName<-readName()
  
  
  message("Welcome ", evalName)
  
  
  source("SamplingDateReadFunction.R")
  source("CreateFiles.R")
  source("SpectraInfoRead.R")
  source("SpectraTransform.R")

