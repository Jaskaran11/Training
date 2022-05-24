class RemoveIndexFromCustomers < ActiveRecord::Migration[7.0]
  def change
    remove_index :customers, :name
    
  end
end
