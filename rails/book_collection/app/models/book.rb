class Book < ApplicationRecord
  has_many :total_page
  validates :title, absence: true
end
