class ChangeTimeFromIntToString < ActiveRecord::Migration
  def change
  	change_column :appointments, :appointment_time, :string
  end
end
