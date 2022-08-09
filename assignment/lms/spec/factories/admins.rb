FactoryBot.define do
  factory :admin do
    name { "MyString" }
    age { rand(1..100) }
    born_at { "2022-08-09 18:02:20" }
    sequence(:email) {|n| "name+#{n}@example.com" }
  end
end
