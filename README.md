# Closing the Loop

Many scholars believe that learning analytics will not demonstrate real utility until it can "Close the Loop", use data to automate decision making and intervention.

The purpose of this project is to schedule an auto-email system that send analyzed data of Twitter posts which you interested in to your own email adress if the tweet meets some types of criterion (treshold).

### Prerequisites

* **Twitter Account**
	- Create a Twitter account at Twitter.com and register as a developer at the following [Link](https://developer.twitter.com/)

* **Key to Twitter API**
	- You will then need to register a new app in order to access the Teitter API:  [Link](https://apps.twitter.com/)

* **R Packages**
	- Also, You will need these r packages to run this RMarkdown file.
```
install.packages("ROAuth")
install.packages("twitteR")
install.packages("sendmailR")
install.packages("cronR")
```


## Navigation

After your access to Twitter API is permitted, you'll got api_key, api_secret, access_token, and access_token_secret on the Twitter Developer Platform website.

First, you could go to line 25 - 31 to key in the passwords mentioned above.

```
api_key <- ""
api_secret <- ""
access_token <- ""
access_token_secret <- ""
```


Second, you could go to Line 41 to insert the key word which you're interested in. In this example, the key word is educational data mining. Also, You can only search from the previous 6-7 days so please change the date correspondently. Limit the number of tweets you are searching for if you are searching for a popular term using "n="


```
TL <- searchTwitter("educational data mining", n=50, since='2019-04-16', until='2019-04-23')
#Make sure you change the dates here to be 6 days from today.
```

Third, please go to line 67 and 71 to insert your email. And write a subject title for your email at line 73 and write some descriptions.

```
# Line 67
address <- as.character("your email")

# Line 71
from <- "<your email>"

# Line 73
to <- address
subject <- "Loop-Closing"
body <- c(
  "Description."
)
```



## Tools
* [R](https://www.r-project.org)
* [RStudio](https://www.rstudio.com)
* [Twitter Dveloper Platform](https://developer.twitter.com/content/developer-twitter/en.html)



## Author
[Chieh-An (Victoria) Yang](https://www.linkedin.com/in/victoria-chieh-an-yang/) - Learning Analytics MS student at Teachers College, Columbia University
