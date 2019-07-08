class Song
  attr_accessor :artist, :title, :name
  
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
    
    def self.new_by_filename(filename)
      song = self.new
      song.name = filename.split(" - ")[1].chomp(".mp3") # formats song name correctly
      song.artist_name = filename.split(" - ")[0] # formats artist name correctly
      song  # returns the song instance
    end
  
  # def self.create_from_filename(filename)
  #   song = self.new
  #   song.name = filename.split(" - ")[1].chomp(".mp3") # formats song name correctly
  #   song.artist_name = filename.split(" - ")[0] # formats artist name correctly
  #   @@all << song # saves new song instance
  end