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
  dfSub <- data[data$nobs >=threshold,]
  Tid<-dfSub$id
  cr<-vector()
  for (i in Tid){
  dd<-read.csv(f[i])
  dd=na.omit(dd)
  cr<-c(cr,cor(dd$nitrate,dd$sulfate))
  }
  cr
  
}