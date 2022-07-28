class Author < ApplicationRecord
  has_many :books

  def self.search(search)
    where("hobby LIKE ?","%#{search}")
  end
end
