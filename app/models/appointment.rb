class Appointment < ActiveRecord::Base
  belongs_to :barber

  validates :client_name, presence: true
  validates :client_phone, presence: true
  validates :barber_id, presence: true
  validates :appt_start, presence: true
end
