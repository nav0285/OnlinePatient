class Appointment < ActiveRecord::Base

	belongs_to :doctor, dependent: :destroy
	
	belongs_to :patients, dependent: :destroy
	
	validates :doctor_id, presence: true
	
	validates :patient_id, presence: true, uniqueness: {scope: [:appointment_date, :appointment_time]}
	
	validates :appointment_date, presence: true, uniqueness: {scope: [:patient_id, :doctor_id]}

	validates :appointment_time, presence: true, uniqueness: {scope: [:appointment_date, :doctor_id]}

end
