library(twitteR)
setup_twitter_oauth(api_key,api_secret,access_token,access_token_secret)

#Get the tweets containing the word "data mining"
data_mining_tweets = searchTwitter('data mining', lang='en')
#view the first 6 tweets
head(data_mining_tweets)
#view the last 6 tweets
tail(data_mining_tweets)

#convert the tweets from tweet list to Data Frame
data_mining_tweets = twListToDF(data_mining_tweets)

#Now, you are ready to play with R and Twitter!
summary(data_mining_tweets)
attributes(data_mining_tweets)

###Example 1: grep the tweet containing the word "twitter" (case insensitive)
grep("twitter",data_mining_tweets$text, ignore.case=TRUE)

#load the text mining package (tm) and load it
library(tm)

##Create a Corpus:
> #to prevent encoding errors, use utf-8 
data_mining_corpus = Corpus(VectorSource(iconv(data_mining_tweets$text,to='utf-8')))

##Clean and keep cleaning
#Remove white space
data_mining2=tm_map(data_mining_corpus,stripWhitespace)

#Lower case
data_mining3=tm_map(data_mining2,content_transformer(tolower))
inspect(head(data_mining3))

data_mining4=tm_map(data_mining3,removeWords,stopwords(kind="en"))

#keep cleaning
data_mining4=tm_map(data_mining3,removePunctuation)
data_mining5=tm_map(data_mining4,removeNumbers)


##TermDocumentMatrix
data_mining_tdm=TermDocumentMatrix(data_mining_corpus,control=list(removePunctuation=TRUE,stopwords=c('data','mining',stopwords('en')),removeNumbers=TRUE,tolower=TRUE))
m=as.matrix(data_mining_tdm)

##Count the frequency of the words
word_freqs=sort(rowSums(m),decreasing = TRUE)
head(word_freqs)

##Create a data frame that associate each word to its frequency
dm=data.frame(word=names(word_freqs),freq=word_freqs)
#How many times the word analytics appear?
dm['analytics',]
##               word freq
##analytics analytics    7

##Wordcloud creation
library(wordcloud)
wordcloud(dm$word,dm$freq,random.order = FALSE, colors = brewer.pal(0,'Dark2'))
#First 100 words
wordcloud(head(dm$word,100),head(dm$freq,100),random.order = FALSE, colors = brewer.pal(0,'Dark2'))
