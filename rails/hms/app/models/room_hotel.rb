class RoomHotel < ApplicationRecord
  belongs_to :customer
  has_one :reservation
end
