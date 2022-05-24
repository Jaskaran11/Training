class AddForeignKeyToRooms < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :rooms, :customers
  end
end
