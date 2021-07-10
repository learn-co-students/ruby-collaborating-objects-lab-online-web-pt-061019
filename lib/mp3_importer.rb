require "pry"

class MP3Importer

  attr_accessor :path

  def initialize(path)
    @path = path

    # Dir["/spec/fixtures/mp3s/*.mp3"]
  end

  def files
    files = Dir.glob("#{path}/*.mp3") # glob = global
    files.collect {|file| file.gsub("#{path}/","")} # Remove the .mpg, and the path/folder and split at each hypen

    # binding.pry
    # filename = Dir.entries("/spec/fixtures/mp3s/*.mp3")
    # filename.gsub(".mp3","").split(" - ")

    # Dir.entries("/spec/fixtures/mp3s/*.mp3")
    # Dir.entries("/Users/shannoncrabill/Downloads/*.png")
  end

  def import
    files.each do |file|
      file = Song.new_by_filename
    end

    # Since we have to send the filenames to the Song class,
    # we'll end up calling the following code in the #import method:
    # Song.new_by_filename(some_filename). This will send us to the Song class, specifically Song.new_by_filename.
  end
end
