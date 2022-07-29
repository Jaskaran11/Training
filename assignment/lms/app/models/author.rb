class Author < ApplicationRecord
  has_many :books
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_no, numericality: true
end
