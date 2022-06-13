class ChangeColumnType < ActiveRecord::Migration[7.0]
  def up
    change_column :books, :price, :integer
  end
  def down
    change_column :books, :price, :decimal
  end
end
