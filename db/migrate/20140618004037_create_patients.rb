class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
    	t.string :fname
			t.string :lname
			t.string :sex
			t.integer :age
			t.string :street
			t.string :city
			t.string :state
			t.string :email
      t.timestamps
    end
  end
end
