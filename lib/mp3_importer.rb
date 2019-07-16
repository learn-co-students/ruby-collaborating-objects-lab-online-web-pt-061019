class MP3Importer

  attr_accessor :path

  def initialize(path)
    self.path = path # @path = path
  end

  def files
    Dir.children(self.path)
    # Dir[@path+"/*.mp3"].map {|file| file.split("/").last}
    # Dir.glob("#{self.path}/*.mp3").map {|f| f.gsub("#{self.path}", "")}
  end

  def import
    self.files.map {|filename| Song.new_by_filename(filename.gsub(".mp3", ""))}
  end
end
