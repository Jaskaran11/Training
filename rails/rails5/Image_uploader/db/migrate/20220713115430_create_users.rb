class CreateUsers < ActiveRecord::Migration[5.2]
  def change
    create_table :users do |t|
      t.string :name
      t.string :address
      t.string :gender
      t.string :profile
      t.timestamps
    end
  end
end
