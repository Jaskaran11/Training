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

  # private
  # def remove_whitespaces
    # title.strip!
  # end
  # belongs_to :author, counter_cache: true
  # belongs_to :author, dependent: :delete, validate: true, inverse_of: :books, touch: true
  belongs_to :author
  #has_many :publishers
  
  #has_and_belongs_to_many :authors
  belongs_to :publisher
  scope :price, -> { where(price > 100 )}
end
