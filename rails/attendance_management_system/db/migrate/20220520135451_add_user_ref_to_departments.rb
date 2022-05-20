class AddUserRefToDepartments < ActiveRecord::Migration[7.0]
  def change
    add_reference :departments, :employee_id, null: false, foreign_key: true
  end
end
