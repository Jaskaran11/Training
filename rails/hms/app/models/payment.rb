class Payment < ApplicationRecord
  validates :paid, inclusion: [true, false]
  validates :paid, exclusion: [nil]
  before_create do
    puts "Hello there before create here"
  end
  after_create :print_After
  private
    def print_after
      puts "Hello after create here"
    end
end
