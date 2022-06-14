class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :appointments_id
  end
end
