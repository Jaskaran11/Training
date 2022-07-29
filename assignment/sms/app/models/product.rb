class Product < ApplicationRecord
  def self.search(search)
    if search
    where('name ILIKE ?', "%#{search}%")
  else 
    Product.all
  end
end
end
