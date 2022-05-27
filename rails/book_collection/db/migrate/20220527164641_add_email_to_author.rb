class AddEmailToAuthor < ActiveRecord::Migration[7.0]
  def change
    add_column :authors, :email_address, :string
  end
end
