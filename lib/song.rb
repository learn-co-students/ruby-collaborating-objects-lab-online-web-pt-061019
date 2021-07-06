class Song
  attr_accessor :name, :artist
  
  @@all = []

  def initialize(name)
    @name = name
    @artist = artist
    @@all << self
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
 
  def self.new_by_filename(filename)
    #song = filename.split(" - ")[1]
    #artist = filename.split(" - ")[0]
    artist , song = filename.split(" - ")
    new_song = self.new(song) 
    new_song.artist_name = artist 
    new_song.artist.add_song(new_song)
    new_song
  end
  
end
  
  
