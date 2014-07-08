class AppointmentsController < ApplicationController

	helper_method :find_patient_name

	def index
		@date = Date.today
		@patients = current_doctor.appointments.where(appointment_date: "#{@date}")
	end

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
			params.require(:appointment).permit(:department_id, :doctor_id, :patient_id, :appointment_date)
		end
		
		def find_patient_name(name)
			p = Patient.find("#{name}")
			p.fname + " " + p.lname
		end

end
