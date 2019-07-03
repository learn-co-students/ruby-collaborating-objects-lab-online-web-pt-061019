require 'pry'

class Artist
  attr_accessor :name
  attr_reader :songs

  @@all = []

  def initialize(name)
    @songs = []
    @name = name
    self.save
  end

  def save
    @@all << self
  end

  def add_song(song)
    self.songs << song #unless self.include?(song)
    song.artist = self #unless song.artist == self
  end

  def self.all
    @@all
  end

  def self.find_or_create_by_name(name) #composite constructor
    self.find_by_name(name) || self.create_by_name(name)
  end

  def self.find_by_name(name)
    @@all.detect{|artist| artist.name == name}
  end

  def self.create_by_name(name)
    Artist.new(name)
  end

  def print_songs
    self.songs.each do |song|
      puts song.name
    end
  end



end
