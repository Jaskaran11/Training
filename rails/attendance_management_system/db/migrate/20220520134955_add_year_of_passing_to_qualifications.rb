class AddYearOfPassingToQualifications < ActiveRecord::Migration[7.0]
  def change
    add_column :qualifications, :year_of_passing, :date
  end
end
