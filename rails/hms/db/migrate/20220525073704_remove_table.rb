class RemoveTable < ActiveRecord::Migration[7.0]
  def up
    drop_table :food_items
  end

  def down
    raise ActiveRecord::IrreversibleMigration
  end
end
