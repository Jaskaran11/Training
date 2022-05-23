class AddForeignKeyToReservationsFromCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :reservations, :customer_id, :integer
    add_foreign_key :reservations, :customers
  end
end
