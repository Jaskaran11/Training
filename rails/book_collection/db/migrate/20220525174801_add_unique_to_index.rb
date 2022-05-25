class AddUniqueToIndex < ActiveRecord::Migration[7.0]
  def change
    create_table :genres, id: false, primary_key: :genre_option do |t|
      t.text :genre_option 
      t.integer :genre_id 
      t.index :genre_id, :unique => true
    end
  end
end
