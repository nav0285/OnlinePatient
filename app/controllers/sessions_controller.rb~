class SessionsController < ApplicationController

	rescue_from ActiveRecord::RecordNotFound, with: :show_error

	def create
		@doctor = Doctor.find(params[:id])
		if @doctor && @doctor.authenticate(params[:password])
			flash[:success] = "Successfully logged in"
			session[:doctor] = @doctor.id
			redirect_to root_url
		else
			show_error
		end		
	end

	def destroy
		session[:doctor] = nil
		flash[:success] = "Successfully logged out."
		redirect_to root_url
	end
	
	private
	
  	def show_error
  		flash.now[:error] = "Invalid id/password"
  		render :new
  	end
	
end
