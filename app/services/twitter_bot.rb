require 'pry'
require 'colorize'
require 'twitter'
require 'dotenv'
Dotenv.load('.env')

#This bit will get handles from a list of follewers
class TwitterBot
  def initialize
    config_api
    @count_followers = 0
    @followers = {}
  end

  #méthode pour iniatialiser l'API Twitter
  def config_api
    @client = Twitter::REST::Client.new do |config|
      binding.pry
      config.consumer_key = Rails.application.credentials.twitter[:api_key]
      binding.pry
      config.consumer_secret = Rails.application.credentials.twitter[:api_secret_key]
      config.access_token = Rails.application.credentials.twitter[:access_token]
      config.access_token_secret = Rails.application.credentials.twitter[:access_secret_token]

      #config.consumer_key = ENV["TWITTER_API_KEY"]
      #config.consumer_secret = ENV["TWITTER_SECRET_KEY"]
      #config.access_token = ENV["TWITTER_ACCESS_TOKEN"]
      #config.access_token_secret = ENV["TWITTER_ACCESS_TOKEN_SECRET"]
    end
  end

  def get_followers
    @followers[1] = @client.followers("project_hacking")
    puts "####  #{@followers[1].count} Followers retrieved  ####".cyan
  end

  def save_target
    Target.destroy_all unless Target.count.zero?
    @followers.each do |cat, list|
      list.each do |fol|
        target = Target.new(name: fol.name, screen_name: fol.screen_name, user_id: fol.id, category_id: cat)
        if target.valid?
          target.save
          puts "new target saved".green
          @count_followers += 1
        else
          puts "ERROR: couldn't add follower to Target: #{target.errors.full_messages}".red
        end
      end
    end
    puts "#### #{@count_followers} targets added to DB ####".cyan
  end

  def send_message
    test = "pthitemartine"
  end

  def perform
    #get_followers
    #save_target
    puts "s"
  end
end
TwitterBot.new.perform