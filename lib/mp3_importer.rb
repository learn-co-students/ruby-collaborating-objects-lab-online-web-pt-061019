class MP3Importer
  :path
  
  def initialize(path)
    @path = path
  end
  
  def files
    files = []
    Dir.new(self.path).collect do |file|
      files << file if file.length > 4
    end
    files
  end


  def import
 end
end