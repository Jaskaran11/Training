class Appointment < ApplicationRecord
  belongs_to :physician
  belongs_to :patient

  enum status: {
    pending: 0,
    active: 1,
    archived: 2
  }
end
