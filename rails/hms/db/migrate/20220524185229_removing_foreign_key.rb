class RemovingForeignKey < ActiveRecord::Migration[7.0]
  def change
    remove_foreign_key :rooms, column: :customer_id
    remove_foreign_key :reservations, column: :customer_id
    remove_foreign_key :payments, column: :customer_id
  end
end
