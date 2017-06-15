# 
require 'nokogiri'
require 'open-uri'

class TwitterScrapper
  def initialize
    @url = Nokogiri::HTML(open('https://twitter.com/travisbarker'))

  end

  def extract_username
    profile_name = @url.search(".ProfileHeaderCard-name > a")
    puts " userName : #{profile_name.first.inner_text}"
    puts "-------------------------------------------"
  end

  def extract_stats
    arrayTweets = ""
    tweets = @url.search('.ProfileNav-value')[0].inner_text
    arrayTweets << "Tweets : #{tweets}|\t"
    tweet = @url.search('.ProfileNav-value')[1].inner_text
    arrayTweets << "Following : #{tweets}|\t"
    tweet = @url.search('.ProfileNav-value')[2].inner_text
    arrayTweets << "Follower : #{tweets}|\t"
    puts arrayTweets.gsub(/\s+/," ").strip
    puts "-------------------------------------------"
  end

  def extract_tweets
    tweet = []
    tweets = @url.search('.js-tweet-text-container').inner_text
    tweet << tweets
    puts tweet
  end
end

travistweet = TwitterScrapper.new
travistweet.extract_username
travistweet.extract_stats
travistweet.extract_tweets