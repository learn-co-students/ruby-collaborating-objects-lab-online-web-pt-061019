class Song

  attr_accessor :name, :artist

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def self.new_by_filename(file_name)
    array = file_name.split(" - ")
      song_artist = array[0]
      song_name = array[1]
      suffix = array[2]
    new_instance = Song.new(song_name)
    new_instance.artist = Artist.find_or_create_by_name(song_artist)
    return new_instance
  end

  def artist_name=(singer)
    self.artist = Artist.find_or_create_by_name(singer)
  end

end
