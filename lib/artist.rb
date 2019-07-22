require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
    self.save
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    # @@all << self
    self.class.all << self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name)
    #Find the artist instance that has
    #that name or create one if it doesn't exist
    #Creates new instance of Artist if none exist
    # .find = .detect
    # @@all = self.all
    # if !@@all.detect { |n| n.name = name}
    #   artist = Artist.new(name)
    # else
    #   @@all.detect { |n| n.name = name}
    # end
    # artist = self.all.find {|n| n.name = name} ? artist : self.new(name)

    self.all.find {|n| n.name = name} || self.new(name)
  end

  def print_songs
    @songs.each {|s| puts s.name}
  end

end
