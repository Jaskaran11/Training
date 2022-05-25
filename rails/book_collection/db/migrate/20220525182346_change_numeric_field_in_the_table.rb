class ChangeNumericFieldInTheTable < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :price, :decimal, :precision => 8, :scale => 2
    remove_column :customers, :price
  end
end
