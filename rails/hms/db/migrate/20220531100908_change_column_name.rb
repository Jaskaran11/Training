class ChangeColumnName < ActiveRecord::Migration[7.0]
  def change
    rename_column :rooms, :rooms_type, :type
  end
end
