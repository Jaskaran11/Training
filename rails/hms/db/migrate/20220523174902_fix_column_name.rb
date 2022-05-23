class FixColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :rooms, :name, :name_of_customer
  end
end
