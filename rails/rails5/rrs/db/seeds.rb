# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Country.create(name: "france")
Country.create(name: "italy")
  
City.create(name: "paris", country_id: Country.find_by(name: "france").id)
City.create(name: "nice", country_id: Country.find_by(name: "france").id)
City.create(name: "roma", country_id: Country.find_by(name: "italy").id)
City.create(name: "venezia", country_id: Country.find_by(name: "italy").id)