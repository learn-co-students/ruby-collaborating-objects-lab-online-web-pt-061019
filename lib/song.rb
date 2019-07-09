class Song
  attr_accessor :artist, :name, :file_name
  
  @@all = []
  
  def initialize(name)
    @name = name
    @artist = artist
    @file_name = file_name
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
    
  def self.new_by_filename(file_name)
    song.song_name = file_name.chomp(".mp3").split(" - ")
    song = Song.new(song[1])
    song.artist_name = file_name.split(" - ")[0]
    #song  
  end
end