class Song

    attr_accessor :name, :artist, :genre

    @@all = []

    def initialize(name)
        @name = name #per instance
        @@all << self #per class
    end

    def self.all
        @@all
    end

    def self.new_by_filename(filename)
        tokens = filename.split(/[-\.]/)
        song_name = tokens[1].strip
        artist_name = tokens[0].strip
#        puts tokens
        song = Song.new(song_name)
        artist = Artist.find_or_create_by_name(artist_name)
        song.artist = artist
        song

    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
    end

end
