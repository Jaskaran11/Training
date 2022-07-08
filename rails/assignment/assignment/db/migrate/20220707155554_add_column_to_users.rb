class AddColumnToUsers < ActiveRecord::Migration[7.0]
  def change
    add_column :users, :vaccinated, :text, array: true, default: []
  end
end
