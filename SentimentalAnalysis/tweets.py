import GetOldTweets3  as got
import pandas  as pd
#def by_name():
 #   tweetCriteria = got.manager.TweetCriteria().setUsername('barackobama').setMaxTweets(1)
  #  tweet = got.manager.TweetManager.getTweets(tweetCriteria)[0]
   # tweet=tweet.head()
    #return tweet
#by_name()
tweetCriteria = got.manager.TweetCriteria().setUsername("barackobama").setSince("2015-09-10").setUntil("2015-09-12").setMaxTweets(1)
tweet = got.manager.TweetManager.getTweets(tweetCriteria)[0]
print(tweet.text)

