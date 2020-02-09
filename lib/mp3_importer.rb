class MP3Importer
  attr_accessor :path

  def initialize(path)
    @path = path
  end

  def files
    mp3s = Dir.glob("#{self.path}/*.mp3")
    mp3s.map { |mp3| mp3.gsub("#{self.path}/", "")}
  end

  def import
    self.files.each { |mp3| Song.new_by_filename(mp3) }
  end
end