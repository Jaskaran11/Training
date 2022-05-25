class AddColumnToBooks < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :date_published, :date
  end
end
