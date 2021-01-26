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
    # Build Appointment
  end

  def patients
    appointments.map {|app| app.patient}
  end

end
