class CreateAccounts < ActiveRecord::Migration[7.0]
  def change
    create_table :accounts do |t|
      t.string :name, :email
      t.string :type
      t.timestamps null: false
    end
  end
end
