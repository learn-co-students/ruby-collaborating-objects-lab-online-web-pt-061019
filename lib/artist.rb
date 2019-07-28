class Artist

  attr_accessor :name, :artist_songs

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
    @artist_songs = []
  end

  def self.all
    @@all
  end

  def songs
    Song.all.select do |song_name|
      song_name.artist == self
    end
  end

  def add_song(song)
    @artist_songs << song
    song.artist = self
    self.class.all << song
  end

  def self.find_or_create_by_name(artist)
    if @@all.find {|object| object.name == artist} == nil
      Artist.new(artist)
    else
      return @@all.find {|object| object.name == artist}
    end
  end

  def print_songs
    @artist_songs.each do |object|
      puts object.name
    end
  end

end
