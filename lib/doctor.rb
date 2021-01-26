class Doctor
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def appointments
  #  @appointments = []
  end

  def new_appointment(date, patient)
    appointments << Appointment.new(date, patient, self)
  end

  def patients
    appointments.map {|app| app.patient}
  end

end
