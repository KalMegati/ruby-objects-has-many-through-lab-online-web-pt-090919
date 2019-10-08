class Patient
  
  attr_reader :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(date, patient, doctor)
    @date = date
    @patient = patient
    @doctor = doctor
    @@all << self
  end
  
end