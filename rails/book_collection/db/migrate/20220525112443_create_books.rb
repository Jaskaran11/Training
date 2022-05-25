class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.text :title
      t.integer :total_page
      t.float :rating
      t.integer :price
      t.timestamps
    end
  end
end
