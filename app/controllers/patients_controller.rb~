class PatientsController < ApplicationController

	def new
		@patient = Patient.new
	end
	
	def create
		@patient = Patient.new(patient_params)
		if @patient.save
			flash[:success] = "#{@patient.fname} #{@patient.lname} has successfully registered. Your Patient id is #{@patient.id}"
			redirect_to root_url
		else
			render :new
		end		 
	end
	
	private
		
		def patient_params
			params.fetch(:patient, {}).permit(:fname, :lname, :age, :sex, :street, :city, :state, :email)
		end
	
end
