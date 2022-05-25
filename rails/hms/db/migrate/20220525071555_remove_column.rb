class RemoveColumn < ActiveRecord::Migration[7.0]
  def change
    remove_column :rooms, :sku, :integer
    remove_column :rooms, :price_of_food, :decimal
    remove_column :rooms, :rooms_id, :bigint
  end
end
