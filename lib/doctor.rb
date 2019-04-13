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

  def new_appointment(patient, date)
    appointment = Appointment.new(patient, self, date)
  end

  def appointments
    Appointment.all.select do |appointments|
      appointments.doctor == self
    end
  end

  def patients
    appointments.map do |appointments|
      appointments.patient
    end
  end

end
