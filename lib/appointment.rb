require 'pry'

class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []
  def initialize(date, patient, doctor)
    @date = date
    binding.pry
    @patient = patient
    @doctor = doctor
    @@all << self
  end

  def self.all
    @@all.each {|appointments| puts appointments}
  end
end
