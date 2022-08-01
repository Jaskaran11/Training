class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  #validates :name, presence: true
  #validates :email, uniqueness: true
  #validates :phone_no, numericality: true
end
