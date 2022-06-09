class CreateHeads < ActiveRecord::Migration[7.0]
  def change
    create_table :heads do |t|
      t.string :name
      t.timestamps
    end
  end
end
