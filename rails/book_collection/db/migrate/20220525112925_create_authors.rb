class CreateAuthors < ActiveRecord::Migration[7.0]
  def change
    create_table :authors do |t|
      t.string :name
      t.date :dob
      t.string :gender
      t.string :country
      t.timestamps
    end
  end
end
