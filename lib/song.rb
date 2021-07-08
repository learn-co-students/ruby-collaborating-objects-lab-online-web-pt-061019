require 'pry'

class Song
  attr_accessor :artist, :name
  
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
    
   def self.new_by_filename(file_name)
    song = file_name.split(" - ")[1]
    artist = file_name.split(" - ")[0]
    new_instance = Song.new(song)
    new_instance.artist_name = artist
    new_instance.artist.add_song(new_instance)
    new_instance
  
      # artist, title = file_name.split(" - ")
      # self.new(title).tap {|song|
      # song.artist = Artist.find_or_create_by_name(artist)
      # song.artist.add_song(song)
      # }
   end
end