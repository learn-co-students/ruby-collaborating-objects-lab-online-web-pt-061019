class MP3Importer
  
  attr_accessor :path
  
  def initialize(path)
    @path = path 
  end 
  
  def files
    files = Dir.glob ("#{path}/*.mp3") #will return anything with .mp3 without .mp3
    files.collect {|file| file.gsub("#{path}/", "")} #gsub strips the path of the files 
  end
  
  def import
    files.each {|file| Song.new_by_filename(file)}
    
  end
  
end