class Book < ApplicationRecord
  has_many :total_page
  validates :title, absence: true
  validates :title, length: { maximum: 100,
    too_long: "%{count} characters is the maximum allowed"}
end
