class DropCreatorsTable < ActiveRecord::Migration[7.0]
  def change
    drop_table :creators
  end
end
