require 'pry'

class Appointment
  attr_accessor :date, :patient, :doctor
  @@all = []
  def initialize(patient, doctor, date)
    @patient = patient
    @doctor = doctor
    @date = date
    @@all << self
  end

  def self.all
    @@all.each {|appointments| puts appointments}
  end
end
