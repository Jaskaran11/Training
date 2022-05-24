class AddIndexToRooms < ActiveRecord::Migration[7.0]
  def change
    add_index :rooms, :name_of_customer
  end
end
