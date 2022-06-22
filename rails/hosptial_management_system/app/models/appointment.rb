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
  after_destroy :log_destroy_action
  def log_destroy_action
    puts 'Appointment destroyed'
  end
  after_update :check_date, unless: [:date?]
  def check_date
    print "plz provide the date for appointment"
  end

  def date?
    if date.blank?
      false
    else 
      true
    end
  end
end
