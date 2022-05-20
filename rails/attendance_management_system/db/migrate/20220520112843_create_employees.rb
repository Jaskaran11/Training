class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
      t.string :name 
      t.string :gender
      t.integer :salary
      t.string :address
      t.string :city
      t.string :country
      t.date :dob
      t.string :mobile
      t.date :hire_date
      t.timestamps
    end
  end
end
