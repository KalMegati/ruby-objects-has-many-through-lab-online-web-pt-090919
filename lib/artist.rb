class Artist
  
  attr_reader :name
  
  @@all = []

  def self.all
    @@all
  end

  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_song(name, genre)
    Song.new(name, self, genre)
  end
  
  def songs()
    Songs.all.select { |tune| tune.artist == self }
  end
  
end