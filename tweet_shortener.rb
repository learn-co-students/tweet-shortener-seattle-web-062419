# Write your code here.
def dictionary
    hash ={
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

def word_substituter(string) 
    
    string.split(' ').collect do |word|
        if dictionary.keys.include?(word.downcase)
            word = dictionary[word.downcase]
        else
            word
        end
    
    end.join(" ")
end

def bulk_tweet_shortener(array)
    array.each do |word|
        puts word_substituter(word)
    end
end

def selective_tweet_shortener(string)
    if string.length > 140
        word_substituter(string)
    else
        string
    end
end

def shortened_tweet_truncator(string)
    if selective_tweet_shortener(string).length > 140
       selective_tweet_shortener(string)[0..136] + "..."
    else
       selective_tweet_shortener(string)
    end
end

