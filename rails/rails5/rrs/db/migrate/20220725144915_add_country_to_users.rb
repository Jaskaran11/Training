class AddCountryToUsers < ActiveRecord::Migration[5.2]
  def change
    add_reference :users, :country, index: true
    add_reference :users, :city, index: true
  end
end
