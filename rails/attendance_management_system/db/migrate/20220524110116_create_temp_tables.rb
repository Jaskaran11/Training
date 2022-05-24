class CreateTempTables < ActiveRecord::Migration[7.0]
  def change
    create_table :temp_tables do |t|
      t.text :name
      t.integer :age
      t.timestamps
    end
  end
end
