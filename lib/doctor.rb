class Doctor
  attr_accessor :appointments
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @appointments = []
    @@all << self
  end

  def new_appointment(date, patient)
    appointments << Appointment.new(date, patient, self)
  end

  def patients
    appointments.map {|app| app.patient}
  end

end
