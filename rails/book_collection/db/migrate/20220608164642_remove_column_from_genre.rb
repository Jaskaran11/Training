class RemoveColumnFromGenre < ActiveRecord::Migration[7.0]
  def change
    remove_column :genres, :books_id
    add_reference :genres, :book, foreign_key: true
  end
end
