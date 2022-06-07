class CreateAppointments < ActiveRecord::Migration[7.0]
  def change
    create_table :appointments do |t|
      t.date :date
      t.references :physicians
      t.references :appointments
      t.timestamps
    end
  end
end
