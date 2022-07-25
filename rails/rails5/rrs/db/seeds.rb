# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'csv'
=begin
    
end
puts "Importing countries..."
CSV.foreach(Rails.root.join("countries.csv"), headers: true) do |row|
  Country.create! do |country|
    country.id = row[0]
    country.name = row[1]
  end
end
=end

puts "Importing cities..."
CSV.foreach(Rails.root.join("cities.csv"), headers: true) do |row|
  City.create! do |city|
    city.name = row[0]
    city.country_id = row[2]
  end
end