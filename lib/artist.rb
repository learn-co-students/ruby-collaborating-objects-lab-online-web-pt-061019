class Artist

  @@all = []

  attr_accessor :name, :songs

  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
    self.save
  end

  def self.all
    @@all
  end

  def save
    self.class.all << self
  end

  def self.find_or_create_by_name(name)
    self.all.find {|a| a.name == name} || self.new(name)
  end

  def print_songs
    self.songs.map {|song| puts song.name}
  end

end
