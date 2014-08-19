class Appointment < ActiveRecord::Base

	belongs_to :doctor, dependent: :destroy
	
	belongs_to :patients, dependent: :destroy
	
	validates :doctor_id, presence: true
	
	validates :patient_id, presence: true, uniqueness: {scope: [:appointment_date, :appointment_time], message: " already have an appointment at that time. So please choose some other time. Thank you."}
	
	validates :appointment_date, presence: true, uniqueness: {scope: [:patient_id, :doctor_id]}

	validates :appointment_time, presence: true, uniqueness: {scope: [:appointment_date, :doctor_id], message: " is not available.. Sorry"}

end
