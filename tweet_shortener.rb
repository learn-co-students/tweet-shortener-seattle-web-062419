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

def word_substituter(tweets)
  tweet = tweets.split
  tweet = tweet.collect do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else 
      word
    end
  end
  tweet.join(" ")
end

# require "pry"
def bulk_tweet_shortener(tweets)
  tweets.each do |word| 
    puts word_substituter(word) 
end

end

require "pry"
def selective_tweet_shortener(tweets)
  if tweets.length > 140 
    word_substituter(tweets)
  else 
    return tweets
  end
end




def shortened_tweet_truncator(tweets)
  if tweets.length > 140
    tweets[0..139]
  else 
    tweets
  end
end