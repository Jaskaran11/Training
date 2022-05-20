class AddEndTimeToAttendance < ActiveRecord::Migration[7.0]
  def change
    add_column :attendances, :end_at, :string
  end
end
