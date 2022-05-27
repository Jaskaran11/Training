class ChangePrecisionValue < ActiveRecord::Migration[7.0]
  def change
    change_column :books, :price, :decimal, :precision=>5, :scale=>1
  end
end
