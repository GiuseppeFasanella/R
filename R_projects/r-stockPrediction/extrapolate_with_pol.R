library(forecast)
library(fpp)


Stock = read.table("/home/gfasanel/R_projects/r-stockPrediction/input/ABC.csv", sep=",", header=TRUE);
#convert to a time series object
tsStock=ts(Stock$Close,start=c(2000,1),frequency=12)

#Extrapolate the future with the different models defined above using the "polynomial representation of the present"
HWStock1_ng=HoltWinters(tsStocktrend1,gamma=FALSE)
HWStock1=HoltWinters(tsStocktrend1)
NETfit1=nnetar(tsStocktrend1)
autofit1=auto.arima(tsStocktrend1)
fit12=arima(tsStocktrend1,order=c(1,0,0),list(order=c(2,1,0),period=12))
fitl1=tslm(tsStocktrend1~trend + season,lambda = 0)
stlStock1=stl(tsStocktrend1,s.window="periodic")

#plot all the prediction you get for the "polynomial representation of the present"
plot(forecast(autofit1,h=24),xlim=c(2000,2015.2),ylim=c(-100,100),lw=2,col="red",xlab="time",ylab="Stock price",main="Predictions of the polynomial trend with several models")
lines(tsStock,lw=3)
abline(v=2013.25,lty=3)
lines(forecast(stlStock1,h=24)$mean,col="red",lw=2)
lines(forecast(fitl1,h=24)$mean,col="orange")
lines(forecast(NETfit1,h=24)$mean,lw=3,lty="longdash",col="brown")
lines(predict(HWStock1_ng,n.ahead=24),lw=2,col="green")
lines(forecast(fit12,h=24)$mean,lw=2,col="purple")
lines(predict(HWStock1,n.ahead=24,prediction.interval = T,level=0.95)[.1],lw=2,col="green")
lines(predict(HWStock1,n.ahead=24,prediction.interval = T,level=0.95)[.2],lw=2,col="green")
lines(predict(HWStock1,n.ahead=24,prediction.interval = T,level=0.95)[.3],lw=2,col="green")
legend("bottomleft",legend=c("Data","Polynomial trend","Prediction =Holt Winters","Prediction = Arima (auto)","Prediction - Arima (fixed)","Prediction- Neural Net","Prediction-Linear Model"),col=c("black","red","green","blue","purple","brown","orange"),lw=2)

