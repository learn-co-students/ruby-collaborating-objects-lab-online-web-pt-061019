class Song
  attr_accessor :name, :artist

  def initialize(name)
    @name = name
    @artist = nil
  end

  def self.new_by_filename(file_name)
    file_parts = file_name.split(" - ")
    new_song = self.new(file_parts[1])
    new_song.artist = Artist.find_or_create_by_name(file_parts[0])
    new_song.artist.songs << new_song
    new_song
  end
end