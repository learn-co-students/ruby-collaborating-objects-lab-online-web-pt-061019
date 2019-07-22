class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    # songname = filename.split(" - ")[1]
    # song = self.new(songname)
    # artistname = filename.split(" - ")[0]
    #
    # if (song.artist.nil?)
    #   new_artist = Artist.new(artistname)
    #   song.artist = new_artist
    #   new_artist.songs << song
    #   new_artist.save
    # else
    #   song.artist.name = artistname
    # end
    # @@all << song
    # song

    song_name = filename.split(" - ")[1]
    song = Song.new(song_name)
    artist_object = Artist.find_or_create_by_name(filename.split(" - ")[0])
    song.artist = artist_object
    song.artist.add_song(self)
    song

    # artist, title = filename.split(" - ")
    # self.new(title).tap {|song|
    #   song.artist = Artist.find_or_create_by_name(aritst)
    #   song.artist.add_song(song)
    # }
  end

end
