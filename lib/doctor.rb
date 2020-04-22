require 'pry'
class Doctor
  attr_accessor :name 
  
  @@all = []
  
  def initialize (name)
    @name = name 
    @@all << self 
  end 
  
  def self.all
    @@all 
  end 
  
  def new_appointment (date, patient)
    Appointment.new(date, self, patient)
  end 
  
  def appointments
    Appointment.all.select do |appt|
      binding.pry
      appt.doctor == self
      #appt.doctor
    end
  end 
  
  def patients 
    appointments.map do |appt|
      appt.patient
    end
  end 
  
end 