class RemoveExtension < ActiveRecord::Migration[7.0]
  def change
    disable_extension('uuid-ossp')
  end
end
