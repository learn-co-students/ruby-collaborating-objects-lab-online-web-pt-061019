class MP#Importer

 attr_accessor :path :new_by_filename

  def intialize(path)
  @path= path
end

def files
files= Dir.glob("#{path}/*.mp3").collect{|file| file.gsub("#{path}/", "")}
#Dir.children(self.path)
end

def import
  files.each{|file| song.new_by_filename}
end

end
