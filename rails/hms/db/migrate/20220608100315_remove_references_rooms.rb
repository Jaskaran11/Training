class RemoveReferencesRooms < ActiveRecord::Migration[7.0]
  def change
    remove_reference :room_hotels, :customers, foreign_key: true
    add_reference :room_hotels, :customer, foreign_key: true
  end
end
