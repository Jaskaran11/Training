class ChangeProductsPrice < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      change_table :rooms do |t|
        dir.up { t.change :price, :string }
        dir.down { t.change :price, :string }
      end
    end
  end
end
