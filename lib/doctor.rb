class Doctor
  
  attr_reader :name
  
  @@all = []
  
  def self.all
    @@all
  end
  
  def initialize(name)
    @name = name
    @@all << self
  end
  
  def new_appointment(patient, date)
    Appointment.new(date, patient, self)
  end
  
  def appointments
    Appointment.all.select { |checkup| checkup.doctor == self }
  end
  
  def patients
    self.appointments.map { |checkup| checkup.patient }
  end
  
end