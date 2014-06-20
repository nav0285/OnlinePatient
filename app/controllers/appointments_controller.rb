class AppointmentsController < ApplicationController

	def new
		@appointment = Appointment.new
	end
	
	def create
		@appointment = Appointment.new(appointment_params)
		if @appointment.save
			flash[:success] = "success"
			redirect_to root_url
		else
			render :new
		end
	end
		
	private
		
		def appointment_params
			params.require(:appointment).permit(:department_id, :doctor_id, :patient_id)
		end

end
