require "pry"

class Artist

  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    # @@all << self
  end

  def self.find_or_create_by_name(name)

  end

  def add_song(song)
    @songs << song # Add this new song, to the array of song by this artist
    # song.artist = self # For the song that was just added, assign this artist as a property
    # @@songs << song # Add the song to the class @@songs array
    # song # Return the song
  end
  #
  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    # self.all.find {|artist| artist.name == name}
    # self.new(name)

    self.all.find {|artist| artist.name == name} || self.new(name) # ???
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end

end
