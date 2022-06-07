class AddPolymorphicAssociations < ActiveRecord::Migration[7.0]
  def change
    # add_column :physicians, :patient_id, :integer
    add_reference :physicians, :patient, polymorphic: true
  end
end
