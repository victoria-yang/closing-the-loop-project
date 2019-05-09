#title: "Closing the Loop"
#author: "Chieh-An"


library(ROAuth)
library(twitteR)
library(sendmailR)
library(cronR)

##  Access to Twitter API
api_key <- ""

api_secret <- ""

access_token <- ""

access_token_secret <- ""

setup_twitter_oauth(api_key, api_secret, access_token, access_token_secret)

## Download Tweets
TL <- searchTwitter("educational data mining", n=50, since='2019-04-16', until='2019-04-23')#Make sure you change the dates here to be 6 days from today.
TL <- do.call("rbind", lapply(TL, as.data.frame))


## Quick visualization of your Tweets over time
counts=table(TL$screenName)
barplot(counts, las=2)

#By time of day
hist(TL$created, breaks = "d")

## Setup auto-email

sendmail_options(smtpServer="ASPMX.L.GOOGLE.COM")
address <- as.character("your email")
address <- paste("<", address, ">", sep = "")


from <- "<your email>"
to <- address
subject <- "Loop-Closing"
body <- c(
    "Description."
)

sendmail(from, to, subject, body)
