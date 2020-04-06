require 'pry'
class Doctor
  attr_accessor :name , :patient 
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @patient = patient
    @@all << self
  end
  
  def new_appointment(date, patient)
     Appointment.new(date, patient)
  end

  def appointments
    Appointment.all.select do |appointment|
      appointment.doctor == self
    end
  end
      
  def patients
    appointments.map do |appointment|
      appointment.patient
    end
  end
end
      
  