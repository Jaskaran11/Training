class AddIrreversibleMethod < ActiveRecord::Migration[7.0]
  def up 
    drop_table :distributors
  end

  def down 
    raise ActiveRecord::IrreversibleMigration
  end
end
