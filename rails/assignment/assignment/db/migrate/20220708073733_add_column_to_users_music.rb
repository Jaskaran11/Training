class AddColumnToUsersMusic < ActiveRecord::Migration[7.0]
  def change
    remove_column :users, :vaccinated
    add_column :users, :favourite_music, :text, array: true, default: []
  end
end
