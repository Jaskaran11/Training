# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
require 'faker'

10.times do |authors|
  auth = Author.create!(name: Faker::Name.name, email: Faker::Internet.email, phone_no: Faker::PhoneNumber.cell_phone, dob: Date.today - authors.years, hobby: [Faker::Hobby.activity], skill: [Faker::Job.key_skill, Faker::Job.key_skill] )

  5.times do |x|
    auth.books.create(title: Faker::Book.title, publisher: Faker::Book.publisher, genre: Faker::Book.genre )
  end 
end
