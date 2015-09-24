class TwitterService
  attr_reader :connection

  def initialize(user)
    @connection ||= Twitter::REST::Client.new do |config|
      config.consumer_key        = ENV['twitter_id']
      config.consumer_secret     = ENV['twitter_secret_key']
      config.access_token        = user.token
      config.access_token_secret = user.secret
    end
  end

  def tweets
    connection.user_timeline
  end

  private
  def parse(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
