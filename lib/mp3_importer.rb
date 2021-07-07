class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.children(@path).each do |filename|
      puts filename
    end
  end

  def import
    Dir.children(@path).each do |filename|
      array = filename.split(" - ")
        song_name = array[0]
        artist_name = array[1]
        suffix = array[2]
      Song.new_by_filename(song_name)
    end
  end

end
