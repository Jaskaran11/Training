class AddRecordsToCustomers < ActiveRecord::Migration[7.0]
  def change
    reversible do |dir|
      dir.up do
        10.times do |i|
          puts "Customer no #{i + 1}"
          Customer.create(
            name: "Customer Name #{i + 1}"
          )
        end
      end

      dir.down do
        10.times do |i|
          puts "Deleting Customer no #{i + 1}"
          Customer.find_by(
            name: "Customer Name #{i + 1}"
          ).destroy
        end
      end
    end
  end
end
