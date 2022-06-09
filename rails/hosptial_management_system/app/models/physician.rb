class Physician < ApplicationRecord
  has_many :appointments
  #has_many :patients, through: :appointments
  has_many :pictures, :as => :imageable
  has_many :patients, class_name: "Physician", foreign_key: "head_id"
  belongs_to :head, class_name: "Physician", optional: true
end
