class AddCommentAndChangingDefaultOfColumn < ActiveRecord::Migration[7.0]
  def change
    change_column :rooms, :id, :string, from: "these are the rooms allotted to the respective customers", to:"these are the rooms booked for customers who have booked and paid it."
    change_column_default :reservations, :confirm, from: true, to: false

  end
end
