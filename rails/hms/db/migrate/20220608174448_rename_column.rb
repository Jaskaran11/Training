class RenameColumn < ActiveRecord::Migration[7.0]
  def change
    rename_column :room_hotels, :type, :name
  end
end
