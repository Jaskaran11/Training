class RemoveColumnAppointment < ActiveRecord::Migration[7.0]
  def change
    remove_column :appointments, :physicians_id
    add_reference :appointments, :physician, foreign_key: true
  end
end
