class Artist

  attr_accessor :name
  attr_reader :songs

  @@all = []#This class variable keeps track of all the artists

  def initialize(name)
    @name = name
    @songs = []
  end

    def self.all
      @@all
    end

  def add_song(song)#associative method bringing songs from the Song class
    @songs << song unless @songs.include?(song)
    song.artist = self unless song.artist == self#this section ensures that we do not add songs that already exist and will prevent us from entering into a loop
  end

  def save
    @@all << self
    self
  end

  def self.find_or_create_by_name(name)
    self.find_by_name(name) || self.create_by_name(name)#This method makes sure we do not duplicate artists, it will find artist or create a new artist depending upon outcome.
  end

  def self.find_by_name(name)
    @@all.find do |artist|
    artist.name == name
    end
  end


  def self.create_by_name(name)
    self.new(name).save #uses the #save method to return and save our new artist. self.new == Artist.new("Michael Jackson").save
  end

  def print_songs
    @songs.each  {|song| puts song.name}
  end


  # def songs
  #   @songs
  # end
end
