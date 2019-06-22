class Song
  attr_accessor :name, :artist
  @@all = []
  def initialize(name)
    @name = name
  end

  def self.new_by_filename(filename)
    songname = filename.split(" - ")[1]
    song = self.new(songname)
    # song.title = filename.split(" - ")[1]
    # song.name = songname
    artistname = filename.split(" - ")[0]

    if (song.artist.nil?)
      new_artist = Artist.new(artistname)
      song.artist = new_artist
      new_artist.songs << song
      new_artist.save
    else
      song.artist.name = artistname
    end
    @@all << song
    song
  end

end
