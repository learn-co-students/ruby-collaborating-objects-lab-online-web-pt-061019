class MP3Importer
  attr_reader :path

  def initialize(path)
    @path = path
  end

  def files
    # binding.pry
    Dir.entries(path).reject{|f| f == '.' || f == '..'}
    # Dir.entries(path)[1..-2]
    # parse > when you parse directory in ruby,
    # there will be entries that always have "." and ".."
  end

  def import
# ["Real Estate - Green Aisles - country.mp3"]
    files.each{|file| Song.new_by_filename(file)}
      # binding.pry
      # parts = file.split(" - ")
      # artist_name = parts[0]
      # song_name = parts[1]
      #
      # a = Artist.find_or_create_by_name(artist_name)
      # a.add_song(Song.new(song_name))
  end

end
