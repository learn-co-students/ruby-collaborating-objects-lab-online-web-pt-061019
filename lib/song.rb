require 'pry'

class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
  end
  
  def self.new_by_filename(filename)
    # song_name = filename.split(" - ")[1]
    # song = self.new(song_name)
    # artist_obj = Artist.find_or_create_by_name(filename.split(" - ")[0])
    # song.artist = artist_obj
    # song.artist.add_song(self)
    # song
    
    artist, title = filename.split(" - ")
    self.new(title).tap {|song|
      song.artist = Artist.find_or_create_by_name(artist)
      song.artist.add_song(song)
    }
    # tap returns object being created
  end
end