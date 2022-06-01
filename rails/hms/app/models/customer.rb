class Customer < ApplicationRecord
  validates :name, presence: { message: "must be given please" }
  validates :available, acceptance: { accept: 1, message: "Accept this"}
  validates :address, confirmation: true
  validates :address_confirmation, presence: true
  # validates :check_in, comparison: { other_than: :check_out }
  validates :name, length: { minimum: 2 }
  validates :address, length: { maximum: 10 }, numericality: { message: "%{value} seems wrong" }
  validates :mobile, length: { is: 10 }
  validates :gender, inclusion: { in: %w(male female cantsay),
    message: "%{value} is not  valid" }, allow_nil: true
  validates :name, presence: true, name: true
  # validates :check_in, uniqueness: { scope: :check_out, case_sensitive: false }
  # validates :check_out, length: { is: 10 }, allow_blank: true
  validate :check_in_cannot_be_in_the_past,
  :check_out_cannot_be_less_than_check_in

  def check_in_cannot_be_in_the_past
    if check_in.present? && check_in < Date.today
      errors.add(:check_in, "cant be in the past")
    end
  end

  def check_out_cannot_be_less_than_check_in
    if check_out < check_in
      errors.add(:check_out, "cant be less than the check-in date")
    end
  end
  validate :customer, on: :create 
  def customer 
    errors.add(:customer_id, "is not active") unless 
    customer.active?
  end
end
