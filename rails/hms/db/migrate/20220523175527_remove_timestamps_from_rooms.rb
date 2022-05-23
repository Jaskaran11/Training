class RemoveTimestampsFromRooms < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :created_at, :string
    remove_column :rooms, :updated_at, :string
  end
end
