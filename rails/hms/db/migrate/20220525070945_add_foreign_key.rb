class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :rooms, :customers
    add_foreign_key :reservations, :customers
    add_foreign_key :payments, :customers
  end
end
