class CreateTimeEntries < ActiveRecord::Migration[7.0]
  def change
    create_table :time_entries do |t|
      t.integer :employee_id
      t.integer :customer_id 
      t.float :time
      t.timestamps
    end
  end
end
