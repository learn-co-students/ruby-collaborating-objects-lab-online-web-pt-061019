class Song 
    attr_accessor :name, :artist

    def initialize(name)
        @name = name
    end

    def artist_name=(artist_name)
        self.artist = Artist.find_or_create_by_name(artist_name)
        self.artist.add_song(self)
    end
    
    def self.new_by_filename(filename)
        artist, title = filename.split(" - ")
        song = Song.new(title)
            song.artist_name = artist
            song
    end
end 