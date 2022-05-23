class AddForeignKeyToRoomsFromCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :customer_id, :integer
    add_foreign_key :rooms, :customers
  end
end
