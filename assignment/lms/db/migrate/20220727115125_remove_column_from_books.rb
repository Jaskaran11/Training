class RemoveColumnFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :price 
    add_column :books, :genre, :string 
    add_column :books, :publisher, :string
  end
end
