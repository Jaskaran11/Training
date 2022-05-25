class AddIndexToAuthor < ActiveRecord::Migration[7.0]
  disable_ddl_transaction!
  def change
    add_index :authors, :name, algorithm: :concurrently
  end
end
