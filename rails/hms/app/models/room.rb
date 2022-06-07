class Room < ApplicationRecord
  #validates :customer_id, numericality: { odd: true, less_than_or_equal_to: 30, only_integer: true }
  #validates :price, numericality: true
  #validates :price, numericality: { in: 1000..5999, other_than: 2999 }
  validates :price, confirmation: true, unless: -> { price.blank? }
  before_create do
    puts "Hello before create here"
  end
  after_create :print_after
  private 
    def print_after
      puts "Hello after create here"
    end
  belongs_to :customer
  has_one :reservation
end
