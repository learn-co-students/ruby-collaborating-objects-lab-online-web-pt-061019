
class Artist
  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

   @@all = []

  def self.all
    @@all
  end

  def songs(song)
    Song.all.uniq.sort_by do |song|
      song.name
  end
end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    @@all.find do |artist|
      artist.name == name
  end
end

  def self.create_by_name(name)
    self.new(name).save
  end

  def add_song(song)
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self
  end

  def save
    @@all << self
    self
  end

  def print_songs
    @songs.each {|sng| puts sng.name }
  end


end
