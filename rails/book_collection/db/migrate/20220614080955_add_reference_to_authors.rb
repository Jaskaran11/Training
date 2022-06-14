class AddReferenceToAuthors < ActiveRecord::Migration[7.0]
  def change
    add_reference :publishers, :author, foregn_key: true 
  end
end
