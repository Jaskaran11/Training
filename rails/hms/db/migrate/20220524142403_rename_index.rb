class RenameIndex < ActiveRecord::Migration[7.0]
  def change
    rename_index :rooms, 'index_rooms_on_name_of_customer', 'index_rooms_on_users'
  end
end
