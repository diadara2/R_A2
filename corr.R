corr<-function(directory, threshold= 0){
  f <- list.files(directory, full.names=TRUE)
  n <- vector()
  id<- 1:332
  
  for (i in id) {
    d <- read.csv(f[i])
    naR <- na.omit(d)
    n <- c(n, nrow(naR))
  }
  
  data <- data.frame(id = id, nobs = n)
  dim(data)
  
  for(i in id){
    if((data[[2]])>=threshold){
      correl <- round(cor(d$nitrate, d$sulfate), digits = 5)
      corvector <- c(corvector, correl)
    }
    corvector
  }
  
  
  
  
}