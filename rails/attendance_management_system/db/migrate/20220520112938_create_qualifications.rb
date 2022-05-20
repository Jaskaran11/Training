class CreateQualifications < ActiveRecord::Migration[7.0]
  def change
    create_table :qualifications do |t|
      t.integer :employee_id
      t.string :name
      t.integer :percentage
      t.date :year_of_passing
      t.timestamps
    end
  end
end
