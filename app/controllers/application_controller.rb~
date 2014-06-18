class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  
  helper_method :current_doctor
  
  private
  	
  	def current_doctor
  		@current_doctor ||= Doctor.find(session[:doctor]) if session[:doctor]
  	end	
  	
end
