class User < ActiveRecord::Base
  def self.find_or_create_from_auth(auth)
    user = User.find_or_create_by(provider: auth.provider, uid: auth.uid)

    user.email     = auth.info.email
    user.name      = auth.info.nickname
    user.image     = auth.info.image
    user.token     = auth.credentials.token
    user.secret    = auth.credentials.secret
    user.save

    return user
  end

  def service
    @service ||= TwitterService.new(self)
  end

  def get_tweets
    service.tweets.first.text
  end

  def analyze_tweets
    Sentimentalizer.analyze(get_tweets, true)
  end

  def get_mood
    MoodAnalyzer.analyze_mood(analyze_tweets)
  end

  def set_spotify(auth)
    self.spotify_token = auth.credentials.token
    self.spotify_id    = auth.uid
    self.save
  end
end
