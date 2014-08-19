class AddStartNumberToPatient < ActiveRecord::Migration
  def change
  	execute <<-SQL
      ALTER TABLE patients AUTO_INCREMENT = 5000
    SQL
  end
end
