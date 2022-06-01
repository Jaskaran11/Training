class Room < ApplicationRecord
  #validates :customer_id, numericality: { odd: true, less_than_or_equal_to: 30, only_integer: true }
  #validates :price, numericality: true
  #validates :price, numericality: { in: 1000..5999, other_than: 2999 }
  validates :price, confirmation: true, unless: -> { price.blank? }
end
