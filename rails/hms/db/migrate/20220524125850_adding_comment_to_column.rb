class AddingCommentToColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :rooms, :id, :string, comment: "these are the rooms allotted to the respective customers"
  end
end
