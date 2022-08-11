class Book < ApplicationRecord
  belongs_to :author

  after_destroy :log_destroy_action

  def log_destroy_action
    puts 'Book destroyed'
  end
  validates :title, presence: true

  def formatted_name
    "#{publisher} #{title}"
  end
end
