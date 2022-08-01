class Author < ApplicationRecord
  has_many :books, dependent: :destroy
  validates :name, presence: true
  validates :email, uniqueness: true
  validates :phone_no, numericality: true
  validates_associated :books
  validates_each :name do |record, attr, value|
    record.errors.add(attr, 'must start with upper case') if value =~ /\A[[:lower]]/
  end
end
