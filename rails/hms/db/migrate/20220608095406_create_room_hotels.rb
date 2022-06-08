class CreateRoomHotels < ActiveRecord::Migration[7.0]
  def change
    create_table :room_hotels do |t|
      t.string :type
      t.integer :price
      t.references :customers, foreign_key: true
      t.timestamps
    end
  end
end
