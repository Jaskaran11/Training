class AddIndexToCustomers < ActiveRecord::Migration[7.0]
  def change
    add_index :customers, :name
  end
end
