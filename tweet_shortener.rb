# Write your code here.

def dictionary 
  dictionary = {
    "hello" => "hi",
    "to" => "2",
    "two" => "2",
    "too" => "2",
    "for" => "4",
    "four" => "4",
    "be" => "b",
    "you" => "u",
    "at" => "@",
    "and" => "&"
  }
end

def word_substituter (string)
  tweets = string.split
  
   tweets.each_with_index do |original, index|
  dictionary.each do |word, replacement|
   
      if word == original
      tweets[index] = replacement
      
  end
end
end.join(" ")
end


  def bulk_tweet_shortener(array)
  array.each do |tweet|
    puts word_substituter(tweet)
  end
end
 
  def selective_tweet_shortener(array)
    if array.length > 140
    word_substituter(array)
  else 
    array
  end
  end
  
  
def shortened_tweet_truncator(tweet)
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end
    