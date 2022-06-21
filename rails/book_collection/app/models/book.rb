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
  scope :name_of_books, -> { select(:title) }
  scope :expensive_books, -> { select(:title).where('price > 200') }
  scope :costs_more_than, ->(amount) { where('price > ?', amount) }
  default_scope { where(rating: true) }
  after_create :remove_whitespaces

  private

  def remove_whitespaces
    title.strip!
  end

  #before_create :check_published_date
  def before_save_method
    puts 'before save'
  end

  def after_save_method
    puts 'after save'
  end

  def around_save_method
    puts 'in around save'
    yield
    puts 'out around save'
  end

  before_save :before_save_method
  after_save :after_save_method
  around_save :around_save_method

  #after_initialize do |book|
    #puts "You have initialized an object book!"
  #end
  after_touch do |author|
    puts "You have touched an object!"
  end
end
