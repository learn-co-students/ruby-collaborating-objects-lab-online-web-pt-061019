class Song 
  attr_accessor :name, :artist
  
  def initialize(name)
    @name = name
    @artist = artist
  end
  
  def self.new_by_filename(file_name)
    file = file_name.split(" - ")
    song = self.new(file[1])
    artist = Artist.find_or_create_by_name(file[0])
    song.artist = artist
    artist.add_song(song)
    song
  end
end