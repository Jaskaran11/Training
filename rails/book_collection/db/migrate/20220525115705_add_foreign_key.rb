class AddForeignKey < ActiveRecord::Migration[7.0]
  def change
    add_foreign_key :books, :authors 
    add_foreign_key :books, :publishers
  end
end
