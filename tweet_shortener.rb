# Write your code here.

def dictionary
  dictionary = {
    'and' => '&',
    'at' => '@',
    'be' => 'b',
    'for' => '4',
    'four' => '4',
    'to' => '2',
    'too' => '2',
    'two' => '2',
    'you' => 'u'
  }
end

def word_substituter tweet
  tweet.split.map do |word|
    if dictionary.keys.include?(word.downcase)
      word = dictionary[word.downcase]
    else
      word
    end
  end.join(" ")
end

def bulk_tweet_shortener tweets
  tweets.each do |tweet|
    puts word_substituter(tweet)
  end
end

def selective_tweet_shortener tweet
  if tweet.length > 140
    word_substituter(tweet)
  else
    tweet
  end
end

def shortened_tweet_truncator tweet
  if word_substituter(tweet).length > 140
    word_substituter(tweet)[0..136] + '...'
  else
    tweet
  end
end