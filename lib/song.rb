require 'pry'

class Song
  attr_accessor :name, :artist, :genre
  def initialize(name, artist, genre)
    binding.pry
  end
  # @@all = []
  # def initialize(name, artist, genre)
  #   @name = name
  #   @artist = artist
  #   @genre = genre
  #   @@all << self
  #   # binding.pry
  # end
  #
  # def self.all
  #   @@all.each {|song| puts song}
  # end
end
