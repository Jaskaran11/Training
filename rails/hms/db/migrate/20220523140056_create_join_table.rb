class CreateJoinTable < ActiveRecord::Migration[7.0]
  def change
    create_join_table :customers, :reservations, column_options: { null: true}, table_name: :categorization
  end
end
