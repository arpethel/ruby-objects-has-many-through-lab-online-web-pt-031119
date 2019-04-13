require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all.each {|song| puts song}
  end

  def new_song(name, genre)
    Song.new(name, self, genre)
    # the song should know it belongs to the artist
  end
end
