class ChangeDefaultPrimaryKey < ActiveRecord::Migration[7.0]
  def up
    create_table :customers, id: false do |t|
      t.integer :customer_id
      t.string :name,      :limit => 30, :null => false
      t.integer :age 
      t.boolean :premium,  :default => 0
      t.binary :photo,     :limit => 2.megabytes
      t.timestamps 
      t.text :notes,        :default => "No notes recorded"
    end
    execute "ALTER TABLE customers ADD PRIMARY KEY(customer_id)"
  end

  def down
    drop_table :customers
  end
end
