class Publisher < ApplicationRecord
  # self.locking_column = :lock_publisher_column
  has_many :books
end
