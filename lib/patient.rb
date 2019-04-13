require 'pry'

class Patient

  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each {|patient| puts patient}
  end

  def new_appointment(doctor, date)
    appointment = Appointment.new(doctor, self, date)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.patient == self
    end
  end

  def doctors
    binding.pry
    appointments.map do |appointment|
      appointment.doctor
    end
  end
end
