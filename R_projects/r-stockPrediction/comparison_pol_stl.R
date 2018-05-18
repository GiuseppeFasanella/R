library(forecast)
library(fpp)


Stock = read.table("/home/gfasanel/R_projects/r-stockPrediction/input/ABC.csv", sep=",", header=TRUE);
#convert to a time series object
tsStock=ts(Stock$Close,start=c(2000,1),frequency=12)

#Summary polynomial fit vs stl analysis
plot(tsStock,lw=3)
lines(tsStocktrend1,col="purple",lw=2)
lines(tsStocktrend2,col= "red", lw=2)
abline(v=2013.25,lty=3)
legend("topleft",legend = c("Data","STL trend","Polynomial trend"),col=c("black","red","purple"),lw=2)

