require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
    @file_count = []
  end

  def files
    @path.glob['*.mp3']
  end
end
