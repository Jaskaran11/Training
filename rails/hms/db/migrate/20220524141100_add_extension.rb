class AddExtension < ActiveRecord::Migration[7.0]
  def change
    enable_extension('uuid-ossp') unless extensions.include?('uuid-ossp')
  end
end
