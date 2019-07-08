class Song
  attr_accessor :artist, :title
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
  end
end
  
  def self.all
    @@all
  end
  
  def artist_name
    if self.artist
      self.artist.name
    else
      nil
    end
  end