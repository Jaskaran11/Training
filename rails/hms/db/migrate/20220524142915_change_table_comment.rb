class ChangeTableComment < ActiveRecord::Migration[7.0]
  def change
    change_table_comment :customers, from: "customers staying at hotel", to: "these are the customers which are staying at the hotel"
  end
end
