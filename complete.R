complete<-function(directory, id= 1:332){
  f <- list.files(directory, full.names=TRUE)
  n <- vector()
    
  for (i in id) {
    d <- read.csv(f[i])
    naR <- na.omit(d)
    n <- c(n, nrow(naR))
  }
  
  data <- data.frame(id = id, nobs = n)
  return(data)
  
  
  
    }