class DropTempTable < ActiveRecord::Migration[7.0]
  def up 
    drop_table :temp_tables
  end

  def down
    raise ActiveRecord::Irreversible
  end
end
