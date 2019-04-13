require 'pry'

class Genre

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each {|genre| puts genre}
  end

  def songs
    Song.all.select do |song|
      song.genre == self
    end
  end

  def artists
    @@all.map do |genre|
      binding.pry
      genre.artist
    end
  end





end
