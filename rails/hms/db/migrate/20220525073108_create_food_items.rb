class CreateFoodItems < ActiveRecord::Migration[7.0]
  def change
    create_table :food_items do |t|
      t.string :title
      t.string :food_items

      t.timestamps
    end
  end
end
