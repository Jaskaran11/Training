class ChangingColumnDefault < ActiveRecord::Migration[7.0]
  def change
    change_column_default :reservations, :confirm, true
  end
end
