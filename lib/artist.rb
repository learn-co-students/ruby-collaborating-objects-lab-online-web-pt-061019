class Artist
  attr_accessor :name, :songs
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end

  def self.all
    @@all
  end
  
  def add_song(song)
    @songs << song
  end
  
  def self.find_or_create_by_name(artist_name)
    @@all.find { |artist| artist_name == artist.name} || Artist.new(artist_name)
  end
  
  def print_songs
    @songs.each {|name| puts name.name}
  end
  
end