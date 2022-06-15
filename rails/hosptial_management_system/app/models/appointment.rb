class Appointment < ApplicationRecord
  belongs_to :physician
  #belongs_to :patient

  validates :date, presence: true
  # after_validation :set_status
  #def set_status
    #self.status = errors.empty?
  # end
  #after_save :set_status
  #def set_status
    #self.status = errors.empty?
  #end
  before_destroy :check_id
  def check_id
    self.physician_id = errors.empty?
  end
end
