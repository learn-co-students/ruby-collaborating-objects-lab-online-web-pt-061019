class MP3Importer
 attr_accessor :path
  def initialize(path)
    @path = path
  end

  def import(list_of_filenames)
    list_of_filenames.each {|filename|
    Song.new_by_filename(filename)}
  end
def files
  Dir.entries(path).reject{|f| f=="." || f==".."}
end

def import
  files.each {|f| Song.new_by_filename(f)}
end

end
