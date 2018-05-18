###Make stock predictions using models

1. Run input/getStock.sh to generate the input CSV files (downloaded from http://finance.yahoo.com). Monthly data from January 2000 to April 2013

The column used is called "Close"

* Preliminary tests are done using the ABC.csv (AmerisourceBergen Corporation), also committed in this git-hub repository

2. Install missing packages:
```
install.packages("forecast"); 
install.packages("fpp")
```

3. To predict the future it is important to understand the past (i.e. you should have a model of what happened).

* **At first**, just try to **have a look at the data themselves**
```
Stock = read.table("/home/gfasanel/R_projects/r-stockPrediction/input/ABC.csv", sep=",", header=TRUE);
#convert to a time series object
tsStock=ts(Stock$Close,start=c(2000,1),frequency=12)
#have a look to the tsStock
tsStock
#Now, have a look at the raw plot
plot(tsStock)
#The plot itself is full of wiggles, spikes, etc (that's life). 
To make predictions you can choose to use the raw data as input or a "fit" of the data (polynomial fit, stl trend)
```

![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/0_time_series.png)
![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/1_stock.png)


* Prediction can be done with **several approaches**. The most common ones are:

**Holt Winter Filtering**

(http://stat.ethz.ch/R-manual/R-patched/library/stats/html/HoltWinters.html)
```
In this method the predictions with the minimized squared error are selected
Here two variants are used, the gamma parameter = false means exponential
smoothing is used.
```

**Neural Networks**

(http://www.inside-r.org/packages/cran/forecast/docs/nnetar)
```
Here a single hidden layer neural network with type feed-forward is used to
predict the future prices
```

**ARIMA model**

(http://stat.ethz.ch/R-manual/R-patched/library/stats/html/arima.html)
```
This approach uses an Autoregressive Integrated Moving Average model as a
generalization of the ARMA model which are used mainly for non-stationarity
function predictions.
Two variants are used (automatic and fixed parameter approach)
```

**Linear Model**

(http://www.inside-r.org/packages/cran/forecast/docs/tslm)

```
This TSLM uses a linear model as a base and adds trend and season components
```

**STL Model**

(http://stat.ethz.ch/R-manual/R-devel/library/stats/html/stl.html)
```
The Seasonal Trend Loess model, which was introduced above.
```

* You can use to "present" and the "past" to get a feeling of the future, feeding the methods mentioned above with a "model".

It is possible to feed the methods (HW, STL, Neural networks etc) with the raw data themselves, with a polynomial fit of the data, with a stl trend of the data, etc...

```
#have a look at the polinomial fit
polinomial.R
```

![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/2_pol_model.png)

```
#have a look at the stl fit
stl.R
```
![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/3_stl_model.png)

```
#compare polinomial fit and slt trend
comparison_pol_stl.R
```

![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/4_pol_stl_comparison.png)

```
# Attempt 1: extrapolate the future feeding the methods with the polinomial representation of the stock
extrapolate_with_pol.R
```
![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/5_prediction_polinomial.png)

```
# Attempt 2: extrapolate the future feeding the methods with the stl representation of the stock
extrapolate_with_stl.R
```
![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/6_prediction_stl.png)

```
# Attempt 3: extrapolate the future feeding the methods with the raw data themselves
extrapolate_with_data.R
```
![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/7_predicition_data.png)

```
Compare all the predictions to have the feeling of the various models
```
![alt tag](https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/r-stockPrediction/img/8_all_prediction.png)

4. Simple idea to find the best predicting model: divide your data sample in 2 (train and test samples). Use the train sample to make prediction on the test sample. Then compare the predictions with the real data and find the model which has the least mean absolute error between its prediction and data.

```
Rscript RunPredictions_comparison.r
(with the function findBestPrediction which is included in the code)
```













