class Artist
  attr_accessor :name, :songs

  @@all = []

  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def print_songs
    self.songs.each { |song| puts song.name }
  end

  def save
    @@all << self
  end

  def self.all
    @@all
  end

  def self.find(name)
    self.all.find { |artist| artist.name == name }
  end

  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.new(name)
    end
  end

  # Old Versions before refactoring:

  # def self.find_or_create_by_name(name)
  #   found = Artist.all.select { |artist| artist.name == name }
  #   if found == []
  #     found = [Artist.new(name)]
  #   end
  #   found[0]
  # end

end