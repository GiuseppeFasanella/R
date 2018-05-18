library(forecast)
library(fpp)


Stock = read.table("/home/gfasanel/R_projects/r-stockPrediction/input/ABC.csv", sep=",", header=TRUE);
#convert to a time series object
tsStock=ts(Stock$Close,start=c(2000,1),frequency=12)

#Extrapolate the future with the different models defined above using the "stl representation of the present"
HWStock2_ng=HoltWinters(tsStocktrend2,gamma=FALSE)
HWStock2=HoltWinters(tsStocktrend2)
NETfit2=nnetar(tsStocktrend2)
autofit2=auto.arima(tsStocktrend2)
fit2=Arima(tsStocktrend2,order=c(15,3,3))
fitl2=tslm(tsStocktrend2~ trend + season,lambda = 0)
stlStock2=stl(tsStocktrend2,s.window = "periodic")

#plot all the prediction you get for the "stl representation of the present"
plot(forecast(autofit2,h=24),xlim=c(2000,2015.2),ylim=c(-100,100),lw=2,col="red",xlab="time",ylab="Stock price",main="Predictions of the stl trend with several models")
lines(tsStock,lw=3)
abline(v=2013.25,lty=3)
lines(forecast(stlStock2,h=24)$mean,col="red",lw=2)
lines(forecast(fitl2,h=24)$mean,col="orange")
lines(forecast(NETfit2,h=24)$mean,lw=3,lty="longdash",col="brown")
lines(predict(HWStock2_ng,n.ahead=24),lw=2,col="green")
lines(forecast(fit22,h=24)$mean,lw=2,col="purple")
lines(predict(HWStock2,n.ahead=24,prediction.interval = T,level=0.95)[.1],lw=2,col="green")
lines(predict(HWStock2,n.ahead=24,prediction.interval = T,level=0.95)[.2],lw=2,col="green")
lines(predict(HWStock2,n.ahead=24,prediction.interval = T,level=0.95)[.3],lw=2,col="green")
legend("bottomleft",legend=c("Data","stl trend","Prediction =Holt Winters","Prediction = Arima (auto)","Prediction - Arima (fixed)","Prediction- Neural Net","Prediction-Linear Model"),col=c("black","red","green","blue","purple","brown","orange"),lw=2)

