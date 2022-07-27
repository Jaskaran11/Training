class CreateAuthors < ActiveRecord::Migration[5.2]
  def change
    create_table :authors do |t|
      t.string :name
      t.string :email
      t.bigint :phone_no
      t.datetime :dob
      t.string :hobby, array: true
      t.string :skill, array: true
      t.timestamps
    end
  end
end
