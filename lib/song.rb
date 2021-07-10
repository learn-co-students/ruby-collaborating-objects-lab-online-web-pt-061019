<<<<<<< HEAD
require "pry"
class Song
  attr_accessor :name, :artist, :genre
=======
class Song
  attr_accessor :name, :artist
>>>>>>> 0b8afda17dc498daa16699a8bd5b12cea43905ca

  def initialize(name)
    @name = name
  end

  def add_song
  end

  def self.new_by_filename(filename)
<<<<<<< HEAD
    # binding.pry
    x = filename.gsub(".mp3","").split(" - ")
    artist = x[0]
    name = x[1]
    genre = x[2]
    song = Song.new(name)
    song.name = name
    song.genre = genre
    song.artist = artist
    # binding.pry
    song
    # self.artist.name = artist
    # binding.pry
    # song
=======
    name = filename.split(" - ")[0]
    artist_name = filename.split(" - ")[1]
    song = Song.new(name)
    song.artist = artist_name
    song
>>>>>>> 0b8afda17dc498daa16699a8bd5b12cea43905ca
  end
  #
  # def artist=(artist_name)
  #   artist_name = self.artist.name
  # end

<<<<<<< HEAD
  # def name
  #   # self.artist.name = name
  # end


  def artist
    self.artist = @artist
=======

  def artist
    self.artist == artist
>>>>>>> 0b8afda17dc498daa16699a8bd5b12cea43905ca
  end

end
