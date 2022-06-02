class RemovingTableBookAuthors < ActiveRecord::Migration[7.0]
  def change
    drop_table :book_authors
  end
end
