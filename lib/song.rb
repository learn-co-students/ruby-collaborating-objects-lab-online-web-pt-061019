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
  
  def artist_name=(name)
    if self.artist.nil?
      self.artist = Artist.new(name)
    else
      self.artist.name = name
    end
  end