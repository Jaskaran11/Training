class RemovePublishYearFromBooks < ActiveRecord::Migration[5.2]
  def change
    remove_column :books, :publish_year
  end
end
