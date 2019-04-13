require 'pry'

class Artist
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each {|song| puts song}
  end

  def new_song(name, genre)
    binding.pry
    Song.new(name, self, genre)
    # the song should know it belongs to the artist
  end

  # def songs
  #   Song.all.select do |song|
  #     song.artist == self
  #   end
  # end

  def genres
    song.map do |song|
      song.genre
    end
  end

end
