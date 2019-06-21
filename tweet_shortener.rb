require 'pry'

def dictionary
  # first = ["hello","to","two","too","for","four","be","you","at","and"]
  # second = ["hi", "2","2","2","4","4","b","u","@","&"]
  # subs = Hash[first.zip(second)]
  
  {
    "hello" => "hi",
    "Hello" => "Hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&",
    "To" => "2",
    "Two" => "2",
    "Too" => "2",
    "For" => "4",
    "Four" => "4",
    "Be" => "B",
    "You" => "U",
    "At" => "@",
    "And" => "&"
  }

end


# this receives a string as an argument

def word_substituter(tweet) 
  # split the string into an array
  # iterate over the array
  nstring = ""
  nstring = tweet.split.collect  {|x| 
              if dictionary.keys.include?(x) == true
                # replace that index with the value
                dictionary[x]
              else
                x
              end
          }.join(" ")
  p nstring
end


def bulk_tweet_shortener(tweets)
   tweets.collect {|x|
   puts word_substituter(x)
    
  }
  
  
end

def selective_tweet_shortener(tweet)
  nstring = ""
  if tweet.length > 140
    nstring = tweet.split.collect  {|x| 
                if dictionary.keys.include?(x) == true
                  # replace that index with the value
                  dictionary[x]
                else
                  x
                end
            }.join(" ")
    p nstring
  else
    p tweet
  end
end

def shortened_tweet_truncator(tweet)
  nstring = ""
    if tweet.length > 140
      nstring = tweet.split.collect  {|x| 
                  if dictionary.keys.include?(x) == true
                    # replace that index with the value
                    dictionary[x]
                  else
                    x
                  end
              }.join(" ")
      if nstring.length > 140
        p "#{nstring[0..136]}..."
      else
        p nstring
      end
    else
      p tweet
    end

end
