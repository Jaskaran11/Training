class AddTimeToAttendance < ActiveRecord::Migration[7.0]
  def change
    add_column :attendances, :start_At, :string
  end
end
