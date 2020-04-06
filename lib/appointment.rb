class Appointment
  attr_accessor :date, :doctor, :patient
  
  @@all = []
    
  def self.all
    @@all
  end

  def initialize(date,patient,doctor)
    @date = date
    @doctor = doctor
    @patient = patient
    @@all << self
  end
  
  def appointment 
  Appointment.all.select do |appointment|
    appointment.patient == self 
   end
  end
  
  
  
end