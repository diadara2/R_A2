pollutantmean <- function(directory, pollutant, id = 1:332){
    f <- list.files(directory)
    d <-data.frame()
    
  for (i in id){
    d1<-read.csv(paste(directory,f[i], sep = '/'))
    d<-rbind(d,d1)   
  } 
  
  x<- mean(d[,pollutant], na.rm = TRUE)
  return(x)
}
  
