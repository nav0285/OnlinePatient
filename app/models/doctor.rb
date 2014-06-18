class Doctor < ActiveRecord::Base
	
	belongs_to :department, dependent: :destroy
	
	has_many :appointments

	has_secure_password validations: false

	validates :name, presence: true, on: :create
	
	validates :age, presence: true, on: :create
	
	validates :sex, presence: true, on: :create
	
end
