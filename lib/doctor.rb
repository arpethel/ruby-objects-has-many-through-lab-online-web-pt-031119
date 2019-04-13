require 'pry'

class Doctor
  attr_accessor :name

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all.each {|doc| puts doc}
  end

  def new_appointment(name, date)
    appointment = Appointment.new(name, self, date)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end
  end

  def patients
    appointments.map do |appointments|
      appointments.patients
    end
  end

end
