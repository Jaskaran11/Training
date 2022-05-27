class Customer < Account 
  has_many :time_entries
  validates :terms_of_service, acceptance: { message: 'must be abided' }
end
