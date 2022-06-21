class Appointment < ApplicationRecord
  belongs_to :physician, touch: true
  #belongs_to :patient
  after_touch do
    puts 'An Appointment was touched.'
  end
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
