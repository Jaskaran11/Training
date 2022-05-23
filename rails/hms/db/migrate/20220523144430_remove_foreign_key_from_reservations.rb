class RemoveForeignKeyFromReservations < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :rooms, column: :customer_id
  end
end
