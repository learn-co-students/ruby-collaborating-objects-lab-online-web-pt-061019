class Song

  attr_accessor :genre ,:name
  attr_reader :artist#association component, allows us to pull artist information
  def initialize(name) #See error uninitialized constant Song for #Artist add_song
    @name = name
    @artist = nil  #binding.pry here then add in song = Song.new("Uptown Funk"), artist = Artist.new("Bruno Mars"), artist.add_song(song)
  end

  @@all =[]

  def all
    @@all
  end

  def save
    @@all << self
    self
  end

  def artist=(artist)#everytime artist= gets called, add_song gets called and vis versa.
    @artist = artist
    artist.add_song(self) unless artist.songs.include?(self)
  end

  def self.new_by_filename(filename)#this should accept the info from mp3 importer and parse data.
    artist_name, song_name, genre_name=filename.chomp("mp3").split(" - ")
    song = self.new(song_name)
    song.artist = Artist.find_or_create_by_name(artist_name)
    song.genre = genre_name
    song.save
    #song.title = filename.split(" - ")[1]
    #song
  end

end
