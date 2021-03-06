require 'csv'

namespace :import do
  desc "Import users from csv"
  task users: :environment do
    filename = File.join Rails.root, "users.csv"
    counter = 0
    CSV.foreach(filename) do |row|
      email, first, last = row 
      User.create(email: email, first_name: first, last_name: last)
      counter += 1 if user.presisted?
    end

    puts "Imported #{counter} users"
  end
end
