class RemoveTheColumnFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :name_of_customer
  end
end
