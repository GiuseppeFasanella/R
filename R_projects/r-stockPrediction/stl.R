library(forecast)
library(fpp)


Stock = read.table("/home/gfasanel/R_projects/r-stockPrediction/input/ABC.csv", sep=",", header=TRUE);
#convert to a time series object
tsStock=ts(Stock$Close,start=c(2000,1),frequency=12)

#Attemp #2 => prediction via stlstock analysis
stlstock = stl(tsStock,s.window = "periodic")
plot(stlstock,col="blue",lw=2)
#tsStocktrend2=stlstock$time.series[,2]
#plot(forecast(stlstock))
#abline(v=2013.25,lty=3)

