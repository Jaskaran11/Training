class Author < ApplicationRecord
  validates :country, exclusion: { in: %w(www us ca jp),
    message: "%{value} is reserved." }
  # validates :email_address, format: { with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/ }
  # validates :email_address, uniqueness: true, on: :create
  # validates :name, presence: true, length: { minimum: 3 }
  #validate do |author|
  # errors.add :base, :invalid, message: "This person is invalid because ..."
  # end
  validates :name, presence: true, if: :name?
  
  #def name?
    #name =~ /[\w]+/
  #end
  validates :email_address, format: { with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/ }
  with_options if: :name_valid? do |author|
    author.validates :email_address, format: {with: /\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})/ }
  end

  def name_valid?
    !name.blank?
  end
end
