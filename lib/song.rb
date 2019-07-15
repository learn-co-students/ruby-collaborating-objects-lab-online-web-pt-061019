class Song

  attr_accessor :name, :artist
  # attr_reader :artist
  def initialize(name)
    @name = name
  end

  def artist_name=(artist_name)
    self.artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    artist, title = filename.split(" - ")
    song = self.new(title)
    song.artist_name = artist
    song
  end

end
