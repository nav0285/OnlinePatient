class AppointmentsController < ApplicationController

	helper_method :find_patient_name
	
	helper_method :find_appointment_time
	
	helper_method :find_doctor

	def index
		if params[:id] == '1'
			@date = Date.today + 1
			@bool = true
		else
			@date = Date.today
			@bool = false
		end
		@patients = current_doctor.appointments.where(appointment_date: "#{@date}")
	end

	def new
		@appointment = Appointment.new
	end
	
	def create
		@appointment = Appointment.new(appointment_params)
		if @appointment.save
			flash[:success] = "Successfully you have scheduled an appointment on #{@appointment.appointment_date} at #{@appointment.appointment_time}"
			redirect_to root_url
		else
			render :new
		end
	end
	
	def edit
		@patient = Patient.find(params[:id])
		@appointment = @patient.appointments.find_by appointment_date: "#{Date.today}"
		@app = @patient.appointments
	end
	
	def update
		@appointment = Appointment.find(params[:id])
		if @appointment.update_attributes(appointment_params)
			redirect_to appointments_path
		else
			render :edit
		end		
	end
		
	private
		
		def appointment_params
			params.require(:appointment).permit(:department_id, :doctor_id, :patient_id, :appointment_date, :appointment_time, :report, :complete)
		end
		
		def find_patient_name(name)
			p = Patient.find("#{name}")
			p.fname + " " + p.lname
		end
		
		def find_appointment_time(patient_id, appointment_date)
			p = Patient.find("#{patient_id}")
			a = p.appointments.find_by appointment_date: "#{appointment_date}"
			a.appointment_time
		end

		def find_doctor(id)
			doc = Doctor.find(id)
			doc.name
		end

end
