class AddLockingColumns < ActiveRecord::Migration[7.0]
  def change
    add_column :customers, :lock_version, :integer
  end
end
