require 'pry'

class Artist
  attr_accessor :name
  
  @@song_count = 0
  @@all = []
  
  def initialize(name)
    @name = name
    @songs = []
    @@all << self
  end
  
  def self.all
    @@all
  end
  
  def songs
    @songs
  end
  
  def add_song(song)
    @songs << song
    song.artist = self
    @@song_count += 1
  end
  
  def save
    #@@all << @artist
    self.class.all << self
  end
  
  def self.find_or_create_by_name(name)
    if self.find(name)
      self.find(name)
    else
      self.create(name)
    end
  end
  
  def self.find(name)
    @@all.find do |artist|
      artist.name = name
    end
  end
  
  def self.create(name)
    artist = self.new(name)
    artist.save
    artist
  end
  
  # def self.find_or_create_by_name(name)
  #    (my_artist = self.find.all {|artist| artist.name == name}) ? my_artist : self.new(name)
    
  #   self.find.all {|artist| artist.name == name} || self.new(name)
  # end
  
  def print_songs
   #@songs.collect {|song| puts song.name}
   self.songs.collect {|song| puts song.name}
  end
end