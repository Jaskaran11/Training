class AddForeignKeyOnGenre < ActiveRecord::Migration[7.0]
  def change
    remove_column :genres, :books_id
    add_column :genres, :books_id, :integer
  end
end
