class Song

  attr_accessor :name
  attr_reader :artist
  def initialize(name)
    @name = name
  end

  def artist=(artist_name)
    artist = Artist.find_or_create_by_name(artist_name)
    artist.add_song(self)
  end

  def self.new_by_filename(filename)
    data = filename.split(" - ")
    artist = data[0]
    title = data[1]
    song = self.new(title)
    song.artist=(artist)
  end

end
