class Seed

  def self.start
    generate_excited
    generate_happy
    generate_calm
    generate_content
    generate_mad
    generate_sad
    generate_uncomfortable
    generate_upset
  end

  def self.generate_upset
    songs = ['177756156', '12039983', '28268939', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Upset.create(song: song)
    end
  end

  def self.generate_uncomfortable
    songs = ['177756156', '12039983', '28268939', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Uncomfortable.create(song: song)
    end
  end

  def self.generate_sad
    songs = ['177756156', '12039983', '28268939', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Sad.create(song: song)
    end
  end

  def self.generate_mad
    songs = ['177756156', '12039983', '28268939', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Mad.create(song: song)
    end
  end

  def self.generate_content
    songs = ['177756156', '12039983', '28268939', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Content.create(song: song)
    end
  end

  def self.generate_excited
    songs = ['177756156', '12039983', '66539114', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Excited.create(song: song)
    end
  end

  def self.generate_happy
    songs = ['177756156', '12039983', '28268939', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Happy.create(song: song)
    end
  end

  def self.generate_calm
    songs = ['177756156', '12039983', '28268939', '53363179', '83532983',
            '151853890', '109529816', '85939205', '115417954']
    songs.each do |song|
      Calm.create(song: song)
    end
  end


end

Seed.start
