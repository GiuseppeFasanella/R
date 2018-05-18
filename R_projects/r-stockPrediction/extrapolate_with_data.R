library(forecast)
library(fpp)


Stock = read.table("/home/gfasanel/R_projects/r-stockPrediction/input/ABC.csv", sep=",", header=TRUE);
#convert to a time series object
tsStock=ts(Stock$Close,start=c(2000,1),frequency=12)

#Extrapolate the future with the different models defined above using the "actual data" you have
HWStockr_ng=HoltWinters(tsStock,gamma=FALSE)
HWStockr=HoltWinters(tsStock)
NETfitr=nnetar(tsStock)
autofitr=auto.arima(tsStock)
fitr=Arima(tsStock,order=c(15,3,3))
fitlr=tslm(tsStock~ trend + season,lambda = 0)
stlStockr=stl(tsStock,s.window = "periodic")

#plot all the prediction you get extrapolating the real data"
plot(forecast(autofitr,h=24),xlim=c(2000,2015.2),ylim=c(-100,100),lw=2,col="red",xlab="time",ylab="Stock price",main="Predictions of the raw data")
lines(tsStock,lw=3)
abline(v=2013.25,lty=3)
lines(forecast(fitlr,h=24)$mean,col="orange")
lines(forecast(NETfitr,h=24)$mean,lw=3,lty="longdash",col="brown")
lines(predict(HWStockr_ng,n.ahead=24),lw=2,col="green")
lines(forecast(fitr2,h=24)$mean,lw=2,col="purple")
lines(predict(HWStockr,n.ahead=24,prediction.interval = T,level=0.95)[.1],lw=2,col="green")
lines(predict(HWStockr,n.ahead=24,prediction.interval = T,level=0.95)[.2],lw=2,col="green")
lines(predict(HWStockr,n.ahead=24,prediction.interval = T,level=0.95)[.3],lw=2,col="green")
legend("bottomleft",legend=c("Data","Prediction =Holt Winters","Prediction = Arima (auto)","Prediction - Arima (fixed)","Prediction- Neural Net","Prediction-Linear Model"),col=c("black","green","blue","purple","brown","orange"),lw=2)


