class MP3Importer

  attr_accessor :path

  def intialize(path)
    @path = path
  end

  def files(path)
    Dir.children(self.path)
  end
end
