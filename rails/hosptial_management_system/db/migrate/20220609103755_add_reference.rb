class AddReference < ActiveRecord::Migration[7.0]
  def change
    add_reference :physicians, :head, foreign_key: true
  end
end
