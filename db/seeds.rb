class Seed

  def self.start
    generate_excited
  end

  def self.generate_excited
    songs = ['177756156', '12039983']
    songs.each do |song|
      Excited.create(song: song)
    end
  end


end

Seed.start
