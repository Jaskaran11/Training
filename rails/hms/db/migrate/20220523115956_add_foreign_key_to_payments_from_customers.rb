class AddForeignKeyToPaymentsFromCustomers < ActiveRecord::Migration[7.0]
  def change
    add_column :payments, :customer_id, :integer
    add_foreign_key :payments, :customers
  end
end
