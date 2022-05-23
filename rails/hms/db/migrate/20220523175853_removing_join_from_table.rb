class RemovingJoinFromTable < ActiveRecord::Migration[7.0]
  def change
    drop_join_table :reservation_id, :customer_id, table_name: :categorization
  end
end
