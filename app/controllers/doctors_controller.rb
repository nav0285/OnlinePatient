class DoctorsController < ApplicationController

	rescue_from ActiveRecord::RecordNotFound, with: :show_error

	def new
		@department = Department.find(params[:id])
		@doctor = Doctor.new
	end

	def create 
		@doctor = Doctor.new(doctor_params)
		if @doctor.save
			flash[:success] = "Successfully user created"
			redirect_to root_url
		else
			render :new, locals: {:@department=>Department.find(@doctor.department_id)}
		end
	end

	def uptodate
		@doctor = Doctor.find("#{params[:id]}")
		if @doctor.name == "#{params[:name]}"
			@doctor.password = "#{params[:password]}"
			@doctor.password_confirmation = "#{params[:password_confirmation]}"
			if @doctor.update(doctor_params)
				flash[:success] = "Successfully signed up" 
				redirect_to root_url
			end
		else
			flash.now[:error] = "Error. Id and Name mismatch"
			render :search
		end
	end
	
	private

		def doctor_params
			params.fetch(:doctor, {}).permit(:name, :age, :sex, :experience, :qualification, :department_id, :password, :password_confirmation)
		end

  	def show_error
  		flash.now[:error] = "Invalid id"
  		render :search
  	end

end
