# Write your code here.
def word_substituter(tweet)
  dictionary = {
    "hi" => ["hello"],
    '2' => ["to", 'two', 'too'],
    '4' => ['for', 'four', 'For'],
    'b' => ['be'],
    'u' => ['you'],
    '@' => ['at'],
    '&' => ['and']
  }
    
    tweets = tweet.split
    dictionary.each do |k, v|
        tweets.length.times do |i|
          if v.include?(tweets[i])
            tweets[i] = k
          end 
        end
    end
    tweet = tweets.join(' ')

  end
          
  def bulk_tweet_shortener(tweets)
    tweets.each do |tweet|
      puts word_substituter(tweet)
      
    end
  end
  
  def selective_tweet_shortener(tweet)
    
      if tweet.length > 140
        word_substituter(tweet)
      else
        tweet
      end
    
  end
  
  
  def  shortened_tweet_truncator(tweet)
    if tweet.length > 140 
      word_substituter(tweet)[0..139]
    else
      tweet 
    end
  end
      