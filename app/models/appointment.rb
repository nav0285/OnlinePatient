class Appointment < ActiveRecord::Base

	belongs_to :doctor, dependent: :destroy
	
	belongs_to :patients, dependent: :destroy

end
