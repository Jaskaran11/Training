class RemoveColumnFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :temp, :string
  end
end
