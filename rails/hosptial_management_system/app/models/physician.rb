class Physician < ApplicationRecord
  has_many :appointments, dependent: :destroy
  after_touch :log_when_appointments_or_physician_touched
  private
  def log_when_appointments_or_physician_touched
    puts 'Appointment/Physician was touched.'
  end
  #has_many :patients, through: :appointments
  has_many :pictures, :as => :imageable
  has_many :patients, class_name: "Physician", foreign_key: "head_id"
  belongs_to :head, class_name: "Physician", optional: true
  before_create :throw_abort
  def throw_abort
    throw :abort
  end
end
