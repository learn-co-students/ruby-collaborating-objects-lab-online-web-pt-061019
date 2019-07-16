class Artist 
  attr_accessor :name 
  attr_reader :songs
  
  @@all = [] 
  
  def initialize(name)
    @name = name 
    @songs = []
    self.save
  end
  
    def save
    @@all << self
  end
  
  def add_song(song)
    @songs << song 
  end
  
  def self.all
    @@all
  end
  
  def self.create_by_name(name)
    artist = self.new(name)
    artist
  end
    
  def self.find_or_create_by_name(name)
    Artist.all.find { |artist| artist.name == name } || Artist.create_by_name(name)
  end
  
  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end
end