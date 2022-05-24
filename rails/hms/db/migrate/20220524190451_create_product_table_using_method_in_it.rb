class CreateProductTableUsingMethodInIt < ActiveRecord::Migration[7.0]
  def change
      create_table :products do |t|
      t.text :name
      t.float :price
      t.integer :categoryid
      t.timestamps
    end
    create_table :categories do |t|
      t.text :name
      t.float :description
    end
    add_column :products, :description, :string
    rename_column :products, :categoryid, :category_id
    add_timestamps :categories
    change_column_null :products, :updated_at, true 
    remove_timestamps :products
    add_foreign_key :products, :categories
    remove_foreign_key :products, :categories
    remove_timestamps :categories
    add_index :categories, :name
    rename_index :categories, 'index_categories_on_name', 'index_product_categories_on_name'
    remove_index :categories, :name
    remove_column :products, :description
    add_reference :categories, :name, index: true
    remove_reference :categories, :name, index: false
  end
end
