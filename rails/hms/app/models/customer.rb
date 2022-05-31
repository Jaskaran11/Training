class Customer < ApplicationRecord
  validates :name, presence: true
  validates :available, acceptance: { accept: 1, message: "Accept this"}
  validates :address, confirmation: true
  validates :address_confirmation, presence: true
  validates :check_out, comparison: { greater_than: :check_in}
  validates :name, length: { minimum: 2 }
  validates :address, length: { maximum: 10}
  
end
