def dictionary
    dict = {
        "hello" =>'hi',
        "to" => '2' ,
        "two"=>'2', 
        "too" => '2' ,
        "for" => '4',
        "four"  =>'4',
        'be' => 'b',
        'you' =>'u',
        "at" => "@" ,
        "and" => "&"
    }
end

def word_substituter (tweet)
    wordList = tweet.split(" ")
    keyList = dictionary.keys
    for i in (0...(wordList.size))
        if keyList.include?(wordList[i].downcase)
            wordList[i] = dictionary[wordList[i].downcase]
        end
    end
    wordList.join(" ")
end

def bulk_tweet_shortener(array)
    array.each do |tweet|
        puts word_substituter(tweet)
    end
end

def selective_tweet_shortener(tweet)
    if tweet.size > 140
        return word_substituter(tweet)
    end
    tweet
end

def shortened_tweet_truncator(tweet)
    newTweet = word_substituter(tweet)
    if newTweet.size > 140
        newTweet = newTweet[0...137]
        newTweet << "..."
    end
    newTweet
end