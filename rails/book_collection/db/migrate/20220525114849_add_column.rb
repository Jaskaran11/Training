class AddColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :books, :publisher_id, :integer 
    add_column :books, :author_id, :integer 
  end
end
