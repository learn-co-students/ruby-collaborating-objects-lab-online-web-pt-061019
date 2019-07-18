class MP3Importer 
  attr_accessor :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    # Dir.children changes filename to just mp3 filename without path
    Dir.children(self.path)
  end
  
  def import 
    files.each {|filename| Song.new_by_filename(filename)}
  end
end