class Payment < ApplicationRecord
  validates :paid, inclusion: [true, false]
  validates :paid, exclusion: [nil]
end
