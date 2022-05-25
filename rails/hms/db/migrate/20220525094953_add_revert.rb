class AddRevert < ActiveRecord::Migration[7.0]
  def change
    change_table :customers do |t|
      t.references :rooms
    end
    revert do 
      change_table :customers do |t|
        t.belongs_to :rooms
      end
    end
  end
end
