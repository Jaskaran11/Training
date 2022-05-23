class CreateReservations < ActiveRecord::Migration[7.0]
  def change
    create_table :reservations do |t|
      t.date "date"
      t.boolean "confirmed"
      t.date "check_in"
      t.date "check_out"
      t.timestamps
    end
  end
end
