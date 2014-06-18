class DepartmentsController < ApplicationController

	def index
		@departments = Department.all
	end

	def show
		@department = Department.find(params[:id])
	end

	def new
		@department = Department.new
	end

	def create
		@department = Department.new(department_params)
		if @department.save
			redirect_to root_url
		else
			redirect_to root_url
		end	
	end

	private
		def department_params
			params.require(:department).permit(:name)
		end

end
