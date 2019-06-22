require 'pry'
class Artist
  attr_accessor :name
  @@all = []
  def initialize(name)
    @name = name
    @songs = []
  end

  def add_song(song)
    @songs << song
  end

  def songs
    @songs
  end

  def save
    @@all << self
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
    if !@@all.detect { |n| n.name = name}
      artist = Artist.new(name)
    else
      @@all.detect { |n| n.name = name}
    end
  end

  def print_songs
    @songs.each {|s| puts "#{s.name}"}
  end

end
