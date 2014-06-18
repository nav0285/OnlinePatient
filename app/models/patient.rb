class Patient < ActiveRecord::Base

	has_many :appointments
	
	validates :fname, :lname, :age, :sex, :street, :city, :state, :email, presence: true
	
	validates :email, uniqueness: true
	
	validates :age, numericality: { only_integer: true }

end
