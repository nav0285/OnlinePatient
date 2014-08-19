class AddStartNumberToDoctor < ActiveRecord::Migration
  def change
		 execute <<-SQL
      ALTER TABLE doctors AUTO_INCREMENT = 1000
    SQL
  end
end
