require 'pry'
class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    Dir['**/*.mp3']
    @file ||= Dir.glob("#{path}/*.mp3").collect{ |f| f.gsub("#{path}/","")}
    # binding.pry
  end

  def import
    files.each { |filename| binding.pry Song.new_by_filename(filename)    }

  end
end
