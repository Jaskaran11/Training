class ChangeColumnOfRooms < ActiveRecord::Migration[7.0]
  def change
    change_column :rooms, :name, :text
  end
end
