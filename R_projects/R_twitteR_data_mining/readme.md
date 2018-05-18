```
#Website reference:
#https://sites.google.com/site/miningtwitter/basics
```

###Logical steps:
(This is a **sentiment analysis** in a nut-shell, and extreme syntesis...)

* Step0: create a phonie twitter app to allow connectivity with R (you need to know user key, user secret, ...)
* Step0_bis: connect to twitter using twitteR library
* Step1: search for specific words in the twetts
* Step2: make the wordcloud plot of the frequency per word inside the analyzed tweets

Once Step0 and Step0_bis are completed:

```
Rscript wordcloud.R
```

![alt tag](https://github.com/GiuseppeFasanella/R_projects/blob/master/R_twitteR_data_mining/img/word_cloud.png)

###Procedure

```
#be sure you have the latest R installed (otherwise twitteR won't work properly)
source update_R.sh

#Packages to be installed:
install.packages("twitteR")  
install.packages("tm") (text mining package)
install.packages("wordcloud")
install.packages("RColorBrewer")


#create a new app from twitter apps
#We just care for the User key, User secret, Access Token, Access Token Secret and that's the way to have them
https://apps.twitter.com/ ==> create new app (a phonie one, just to get consumer key and secret from twitter)
#Creating the app, you can give whatever name you want, and whatever website you want (http://test.de/ works for example)
#Create also an Access Token
```
https://raw.githubusercontent.com/GiuseppeFasanella/R_projects/master/R_twitteR_data_mining/img/create_twitter_app.png

```
#Now, everything is ready for connection to twitter and having access to data, you just need to take nots of:

api_key <- "YOUR API KEY" 
api_secret <- "YOUR API SECRET
access_token <- "YOUR ACCESS TOKEN"
access_token_secret <- "YOUR ACCESS TOKEN SECRET"
```

###Other references:
```
Sentiment analysis with R:
https://jeffreybreen.wordpress.com/2011/07/04/twitter-text-mining-r-slides/
https://github.com/jeffreybreen/twitter-sentiment-analysis-tutorial-201107

data mining with Google Analytics
https://www.youtube.com/watch?v=rvLyCZIEt5A

Big Data:
https://jeffreybreen.wordpress.com/2012/03/10/big-data-step-by-step-slides/
https://github.com/jeffreybreen/tutorial-201203-big-data/tree/master/R
```
