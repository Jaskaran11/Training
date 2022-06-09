class RemoveColumnFromHead < ActiveRecord::Migration[7.0]
  def change
    remove_column :heads, :physician_id
    
  end
end
