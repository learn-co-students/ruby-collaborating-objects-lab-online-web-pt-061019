require "pry"

class Artist 
   
  @@all = []
   
  attr_accessor :name, :songs
  
  def initialize(name) 
    @name = name
    @songs = []
  end 
  
  def add_song(song)
    @songs << song 
    @songs 
    #binding.pry
  end 
  
  
  def self.all 
    @@all 
  end 
  
  def save 
    @@all << self 
  end 
  
  def self.create_by_name(name)
    artist = self.new(name)
    artist.save
    artist
  end 
  
  
  def self.find_or_create_by_name(name) 
    Artist.all.find { |artist| artist.name == name } || Artist.create_by_name(name)
  end 
    
  def print_songs 
    @@all.each do |song|
      puts song.name
    end 
  end 
  
  
  
end 