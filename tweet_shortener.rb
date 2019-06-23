def dictionary
  dictionary = {
    "too" => "2",
    "to" => "2",
    "two" =>"2",
    "four" => "4",
    "for" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end


#require "pry"
def word_substituter(tweets)
  
  tweet = tweets.split
  tweet.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    end
  end
    return tweet.join(" ")
end

def bulk_tweet_shortener(tweets)
  
end

def selective_tweet_shortener(tweets)

  if tweets.length > 140 
else 
  return tweets
end
end

def shortened_tweet_truncator(truncated)
  if truncated.length > 140
  else 
    tweets
  end
end