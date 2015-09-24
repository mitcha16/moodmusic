class MoodAnalyzer
  def self.analyze_mood(tweet_sentiment)
    scale = JSON.parse(tweet_sentiment)['probability']
    if scale < 0.19
      return 'mad'
    elsif scale < 0.30
      return 'sad'
    elsif scale < 0.40
      return 'upset'
    elsif scale < 0.49
      return 'uncomfortable'
    elsif scale < 0.55
      return 'calm'
    elsif scale < 0.65
      return 'content'
    elsif scale < 0.85
      return 'happy'
    end
    return 'excited'
  end
end
