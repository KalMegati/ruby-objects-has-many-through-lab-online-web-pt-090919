class Appointment
  
  attr_reader :date, :patient, :doctor
  
  @@all = []
  
  def self.all
    @@all
  end
  
  
  
end