class Artist
  
  attr_accessor :name,
  
  @@all =[]
  
  def initialize(name)
    @name = name
    @@all << self
    @songs = []
  end
  
  def self.all
    @@all
  end
  
  def songs
    Song.all.name
  end
  
  
end

  