class AddDateAndTimeToAppointment < ActiveRecord::Migration
  
  def change
		add_column :appointments, :appointment_date, :date
		add_column :appointments, :appointment_time, :time  
  end

end
