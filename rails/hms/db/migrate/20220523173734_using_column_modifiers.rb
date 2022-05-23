class UsingColumnModifiers < ActiveRecord::Migration[7.0]
  def change
    change_column :payments, :paid, :boolean, null: false
    change_column :payments, :customer_id, :integer, limit: 5
    change_column :payments, :date, :date, default: "2022/04/31"
  end
end
