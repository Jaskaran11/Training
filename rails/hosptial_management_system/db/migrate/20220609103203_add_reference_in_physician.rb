class AddReferenceInPhysician < ActiveRecord::Migration[7.0]
  def change
    add_reference :heads, :physician, foreign_key: true
  end
end
