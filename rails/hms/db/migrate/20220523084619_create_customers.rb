class CreateCustomers < ActiveRecord::Migration[7.0]
  def change
    create_table :customers do |t|
      t.string "name"
      t.string "address"
      t.string "gender"
      t.string "mobile"
      t.date "check_in"
      t.date "check_out"
      t.timestamps
    end
  end
end
