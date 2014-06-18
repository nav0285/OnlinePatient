class CreateDoctors < ActiveRecord::Migration
  def change
    create_table :doctors do |t|
			t.string :name
			t.integer :age
			t.string :sex
			t.string :password_digest 
			t.boolean :admin, default: false
			t.belongs_to :department
      t.timestamps
    end
  end
end
