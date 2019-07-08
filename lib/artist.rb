class Artist
  attr_accessor :name
  
  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def save
    @@all << @artist
  end
end