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
  
  
  
end 