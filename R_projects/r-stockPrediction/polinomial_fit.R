library(forecast)
library(fpp)


Stock = read.table("/home/gfasanel/R_projects/r-stockPrediction/input/ABC.csv", sep=",", header=TRUE);
#convert to a time series object
tsStock=ts(Stock$Close,start=c(2000,1),frequency=12)

#Attempt #1 => prediction using polynomial fit to data as input

tl = seq(2000,2013,length=length(tsStock))
tl2 = tl^7
polyStock = lm(tsStock ~ tl + tl2)
#plot the fitted polynomial model
tsStocktrend1=ts(polyStock$fit,start=c(2000, 1),frequency=12)
#enlarge the line and make it blue
plot(tsStock, lw=2,col="blue",xlim=c(2000,2013))
lines(tsStocktrend1,lw=2,col="red")
#draw a vertical line where data stops
abline(v=2013.25,lty=3)