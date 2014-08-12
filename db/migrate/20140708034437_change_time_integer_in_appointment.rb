class ChangeTimeIntegerInAppointment < ActiveRecord::Migration
  def change
  	change_column :appointments, :appointment_time, :integer
  end
end
