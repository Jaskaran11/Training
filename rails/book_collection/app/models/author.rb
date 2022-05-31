class Author < ApplicationRecord
  validates :country, exclusion: { in: %w(www us ca jp),
    message: "%{value} is reserved." }
  validates :email_address, format: { with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/ }
  validates :name,
  uniqueness: {

    message: ->(object, data) do
      "Hey #{object.name}, #{data[:value]} is already taken"
    end
  }
  validates :email_address, uniqueness: true, on: :create
  validates :dob, numericality: true, on: :account_setup
end
