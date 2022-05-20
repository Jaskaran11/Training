class CreateAttendances < ActiveRecord::Migration[7.0]
  def change
    create_table :attendances do |t|
      t.integer :employee_id
      t.date :date 
      t.date :start_at
      t.date :end_at
      t.timestamps
    end
  end
end
