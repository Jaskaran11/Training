class Book < ApplicationRecord
  # has_many :total_page
  # validates :title, absence: true
  validates :title, length: { maximum: 100,
    too_long: "%{count} characters is the maximum allowed"}
  validates :title, confirmation: true, unless: ->{ title.blank? }
  #validates :title_confirmation, presence: true, if: Proc.new {|book| !book.title.blank? }
  validates :total_page, presence: true, unless: :total_page?

  #def total_page?
    #title.blank?
  #end
  #before_validation :remove_whitespaces

  #private
  #def remove_whitespaces
    #title.strip!
  #end
  belongs_to :author
  has_one :genres
end
