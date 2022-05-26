class AddLockVersionToPublisher < ActiveRecord::Migration[7.0]
  def change
    add_column :publishers, :lock_version, :integer
  end
end
