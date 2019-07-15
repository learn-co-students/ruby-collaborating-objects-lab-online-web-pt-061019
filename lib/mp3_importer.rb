class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir.children(self.path)
  end

  def import
    self.files.map {|filename| Song.new_by_filename(filename.gsub(".mp3", ""))}
  end
end
