class RemoveIndexRooms < ActiveRecord::Migration[7.0]
  def change
    remove_index :rooms, :name_of_customer
  end
end
