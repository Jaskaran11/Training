class AddColumnToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :temp, :string
  end
end
