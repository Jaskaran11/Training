class Author < ApplicationRecord
  validates :country, exclusion: { in: %w(www us ca jp),
    message: "%{value} is reserved." }
  # validates :email_address, format: { with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/ }
  # validates :email_address, uniqueness: true, on: :create
  # validates :name, presence: true, length: { minimum: 3 }
  #validate do |author|
  # errors.add :base, :invalid, message: "This person is invalid because ..."
  # end
  validates :name, presence: true
  
  #def name?
    #name =~ /[\w]+/
  #end
  #validates :email_address, format: { with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/ }
  #with_options if: :name_valid? do |author|
  #  author.validates :email_address, format: {with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/ }
  #end

  #def name_valid?
  #  !name.blank?
  #end
  # include ActiveModel::Validations
  #validates_with MyValidator
  # validates_with AuthorValidator

  #validates_each :name, :country do |record, attr, value|
    #record.errors.add(attr, 'Must start with the upper case') if value =~ /\A[[:lower:]]/
  #end
  # after_create :display_author_age

  #def display_author_age 
    #if self.dob.present?
      #age = Date.today.year - self.dob.year
      #puts "Age of the author is #{age}"
    #else   
      #puts "Age cannot be calculated without date of birth"
    #end
  #end
  has_many :books, dependent: :destroy
  #dependent: :destroy, inverse_of: :author
  #self.primary = 'name'
  #has_and_belongs_to_many :books
  has_many :publishers
  scope :merging, -> { where('name is not null') }
  scope :limit_num, ->(len = 1) { limit len }
  after_commit :send_email_notifications, on: :create
  #def around_destroy_method
    #puts 'in around delete'
    #yield
    #puts 'out around delete'
  #end
  #around_destroy :around_destroy_method
  def send_email_notifications
    send_email_notifications.perform_later(self.id)
  end
  #after_destroy { |author| puts "Author #{author.id} was destroyed."}
  def display_author_name
    puts "Author was destroyed." 
  end
  after_commit :display_author_name, on: :destroy
  after_find do |author|
    puts "You have found the author.!"
  end
end
