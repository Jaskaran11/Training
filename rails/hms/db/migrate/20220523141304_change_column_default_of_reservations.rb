class ChangeColumnDefaultOfReservations < ActiveRecord::Migration[7.0]
  def change
    change_column_default :reservations, :confirm, from: true, to: false
  end
end
