class AddDetailsToRooms < ActiveRecord::Migration[7.0]
  def change
    add_column :rooms, :price_of_food, :decimal, precision: 5, scale: 2
    add_reference :rooms, :rooms, polymorphic: true, null: true
  end
end
