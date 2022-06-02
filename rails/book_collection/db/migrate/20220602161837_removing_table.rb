class RemovingTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :accounts
    drop_table :customers
    drop_table :employees
  end
end
