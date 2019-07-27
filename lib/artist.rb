class Artist

  attr_accessor :name

  @@all_artists = []

  def initialize(name)
    @name = name
    @@all_artists << self
  end

  def self.all
    @@all_artists
  end


end
end
