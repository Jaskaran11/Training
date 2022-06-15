class Appointment < ApplicationRecord
  belongs_to :physician
  #belongs_to :patient

  validates :date, presence: true
  # after_validation :set_status
  #def set_status
    #self.status = errors.empty?
  # end
  before_save :set_status
  def set_status
    self.status = errors.empty?
  end
end
