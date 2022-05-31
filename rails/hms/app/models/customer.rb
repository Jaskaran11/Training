class Customer < ApplicationRecord
  validates :name, presence: true
  validates :available, acceptance: { accept: 1, message: "Accept this"}
  validates :address, confirmation: true
  validates :address_confirmation, presence: true
  validates :check_in, comparison: { other_than: :check_out }
  validates :name, length: { minimum: 2 }
  validates :address, length: { maximum: 10 }
  validates :mobile, length: { is: 10 }
end
