class ChangeTableOfReservations < ActiveRecord::Migration[7.0]
  def change
    change_table :reservations do |t|
      t.remove :check_in, :check_out
      t.time :check_in_hotel
      t.time :check_out_hotel
      t.rename :confirmed, :confirm
    end
  end
end
